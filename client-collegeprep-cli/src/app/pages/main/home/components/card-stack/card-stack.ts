import 'rxjs/add/operator/toPromise';
import 'rxjs/add/observable/timer';

import { Component, animate, trigger, state, style, transition } from '@angular/core';
import { FavoriteService, FavChangedEvent } from "client-angular2-components/dist/services/favorite";
import { ContentService } from "client-angular2-components/dist/services/content";
import { AuthService } from "client-angular2-components/dist/services/auth";
import { RecommendationService } from "../../../../../services/recommendation.service";
import { Subscription } from 'rxjs/Subscription';
import { Observable } from 'rxjs/Observable';
import { UserService } from "client-angular2-components/dist/services/user";
import { User } from "client-angular2-components/dist/models";

@Component ({
  selector: 'card-stack',
  templateUrl: './card-stack.html',
  styleUrls: ['./card-stack.scss'],
  animations: [
    trigger('rotateCard', [
      state('rotateLeft', style({display: 'none'})),
      state('rotateRight', style({display: 'none'})),
      transition('* => rotateLeft', [
        animate('.8s', style({opacity: 0, transform: 'translateX(-100%) rotate(-120deg)'}))
      ]),
      transition('* => rotateRight', [
        animate('.8s', style({opacity: 0, transform: 'translateX(100%) rotate(120deg)'}))
      ])
    ]),
  ],
})

export class CardStackComponent {

  public shownRecs: Array<any> = [];
  public shownIndex: number = 0;

  public sub: Subscription;
  public recs: Array<any>;
  public hasAuth: boolean;
  public error: boolean;
  public static TAG : string = 'CardStackComponent';
  private userCluster: string;
  private logoutSub: Subscription;

  constructor(
    private authService: AuthService,
    private recService: RecommendationService,
    private favService: FavoriteService,
    private userService: UserService
  ){}

  public ngOnInit(){
    this.hasAuth = this.authService.isLoggedIn();
    this.initRecommendations();
    this.initFavListeners();
    this.initLogoutListener();
  }

  public ngOnDestroy(){
    this.sub.unsubscribe();
    this.logoutSub.unsubscribe();
  }

  private initLogoutListener(){
    //login not handled since it is is from a different route, so component re-instantiated
    this.logoutSub = this.authService.tokenChangeBus.subscribe(token => {
      if ( !token ) {
        this.hasAuth = false;
        this.userCluster = null;
        this.recs = null;
        this._initRecommendations();
      }
    });
  }

  private initFavListeners(){
    this.sub = this.favService.favChangedBus.subscribe((e: FavChangedEvent)=>{
      let r: any = this.recs.find(content => content.id == e.id);
      if ( r )
        r.isFav = e.isAdded;
    });
  }

  private initRecommendations(){
    if ( this.hasAuth ){
      this.userService.fetchUser().then((user: User) => {
        this.userCluster = user.career_cluster;
        this._initRecommendations();
      }, fail => {
        console.error(CardStackComponent.TAG, 'initRecommendations fail', fail);
        if ( fail.status == 500 )
          this.error = true;
      });

    } else {
      this._initRecommendations();
    }
  }

  private _initRecommendations(){
    let promises = [this.recService.postQuery(this.generatePayload())];
    if ( this.hasAuth ){
      promises = promises.concat([
        ContentService.SCHOOL_TYPE,
        ContentService.MAJOR_TYPE,
        ContentService.OCCUPATION_TYPE,
        ContentService.SCHOLARSHIP_TYPE,
      ].map(t => this.favService.cacheAll(t)));
    }

    Promise.all(promises).then(results=>{
      this.recs = this.consolidateRecs(results[0]);
      this.shownRecs = this.recs.slice(0,4);

    }, fail=>{
      console.error(CardStackComponent.TAG, '_initRecommendations fail', fail);
      if ( fail.status == 500 || fail.hasError )
        this.error = true;
    });
  }

  private generatePayload() {
    return this.userCluster ? { careerCluster: this.userCluster } : {};
  }

  private consolidateRecs(recs){
    return this.shuffle(recs.majors.concat(recs.schools).concat(recs.occupations).concat(recs.scholarships));
  }

  //refactor this to utility class if another needs it
  private shuffle(a): Array<any> {
    let j, x;
    for (let i = a.length; i; i--) {
      j = Math.floor(Math.random() * i);
      x = a[i - 1];
      a[i - 1] = a[j];
      a[j] = x;
    }
    return a;
  }

  //public prev(){
  //  if ( this.currentIndex == 0 )
  //    return;
  //  this.currentRec = this.recs[--this.currentIndex];
  //}

  private next(){
    if ( this.shownIndex > this.recs.length-8 ) {
      console.debug(`${CardStackComponent.TAG}, querying for more recommendations`);

      this.recService.postQuery(this.generatePayload()).then((results)=>{
        this.recs = this.recs.concat(this.consolidateRecs(results));
      });
    }
  }

  public remove(rec: any){
    rec.animation = 'rotateLeft';
    let type: any = this.getType(rec.contentType);

    if ( this.hasAuth ){
      let fav = FavoriteService.makeFavorite(type, rec);
      this.favService.unfavorite(fav);

    } else {
      this.recService.nonFavorites[`${type.abbrev}Ids`].push(rec.id);
    }
  }

  public toggleFav(rec: any) {
    rec.animation = 'rotateRight';

    rec.isFav = !rec.isFav;
    let type = this.getType(rec.contentType);

    if  ( rec.isFav ) {
      this.favService.create(FavoriteService.makeFavorite(type, rec)).toPromise();

    } else {
      let fav = this.favService.lookup(type, rec);
      if ( fav )
        this.favService.delete(fav).toPromise();
    }
  }

  private getType(contenType: string){
    switch (contenType){
      case 'US_Institutions': return ContentService.SCHOOL_TYPE;
      case 'US_Majors':       return ContentService.MAJOR_TYPE;
      case 'US_Occupations':  return ContentService.OCCUPATION_TYPE;
      case 'US_Scholarship':  return ContentService.SCHOLARSHIP_TYPE;
      default: throw `${CardStackComponent.TAG} contentType not recognized!`;
    }
  }

  public cardAnimation(event: any) {
    if (event.toState == "rotateLeft" || event.toState == "rotateRight") {
      // Query more recommendations if needed
      this.next();

      // after top card is animated out (0.8s) - move other cards to the front (0.5s)
      this.shownIndex++;
      this.shownRecs.splice(0, 1);

      // add 4th card to the back
      Observable.timer(600).subscribe(() => {
        this.shownRecs.push(this.recs[this.shownIndex+3]);
      });
    }
  }

}
