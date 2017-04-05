import 'rxjs/add/operator/debounceTime';
import { Component, ViewChild } from '@angular/core';
import { Router } from '@angular/router';
import { ContentService } from "client-angular2-components/dist/services/content";
import { AuthService } from "client-angular2-components/dist/services/auth";
import { RelateChart } from "client-angular2-components/dist/components/relate-chart";
import { FavoriteService } from "client-angular2-components/dist/services/favorite";
import { Favorite } from "client-angular2-components/dist/models";
import { Subscription, Subject } from 'rxjs';

@Component({
  selector: 'favorites-card',
  templateUrl: './favorites-card.html',
  styleUrls: ['./favorites-card.scss'],
})

export class FavoritesCardComponent {

  @ViewChild('chartFrame') chartFrame;
  @ViewChild(RelateChart) chart: RelateChart;

  public tab: string = 'school';
  public favorites: Array<any>;
  public maxReached: boolean;
  public showRelate: boolean = false;
  public disableRelate: boolean = true;
  public static TAG: string = 'FavoritesCardComponent';
  private hasAuth: boolean;

  private resizeEvent: Subject<any> = new Subject<any>();
  private subs: Array<Subscription> = [];

  constructor(
    private favService: FavoriteService,
    private authService: AuthService,
    private router : Router)
  {
    this.hasAuth = this.authService.isLoggedIn();
    this.favorites = this.hasAuth ? null : [];
  }

  public ngOnInit() {
    if ( this.hasAuth ) {
      this.initLists();
      this.initUserListener();
    }
  }

  private initLists(){
    Promise.all([this.initList('school'), this.initList('major'), this.initList('occupation')]).then(results => {
      this.checkDisableRelate();
      if ( this.tab == 'school' )
        this.favorites = results[0];
    });
  }

  private initUserListener(){
    this.subs.push(this.authService.tokenChangeBus.subscribe(token=>{
      //login case path not reachable, so only logout handled
      if ( !token ){
        this.hasAuth = null;
        this.favorites = [];
      }
    }));
  }

  public ngOnDestroy() {
    this.subs.forEach((s: Subscription) => s.unsubscribe());
  }

  private initList(typeName: string): Promise<any> {
    return this.favService.cacheAll(ContentService[`${typeName.toUpperCase()}_TYPE`]);//.catch(errorArr => errorArr);
  }

  public messageReceived(msg){
    if ( msg.type != RelateChart.INFO_NODE )
      return;
    switch( msg.list ) {
      case RelateChart.SCHOOL_NODE     : this.router.navigateByUrl( '/detail/schools/' + msg.id ); break;
      case RelateChart.MAJOR_NODE      : this.router.navigateByUrl( '/detail/majors/' + msg.id ); break;
      case RelateChart.OCCUPATION_NODE : this.router.navigateByUrl( '/detail/occupations/' + msg.id ); break;
    }
  }

  public setTab(tabName) {
    this.showRelate = false;
    this.tab = tabName;
    if ( !this.hasAuth )
      return;

    let name = tabName.charAt(0).toUpperCase() + tabName.slice(1);
    this.initList(this.tab).then(() => {
      if ( this.tab == tabName ) {
        this.favorites = this.favService[`fav${name}sList`];
        this.maxReached = false;
      }
    });
  }

  public toggleSelect(fav: any) {
    if ( fav.isSelected ) {
      fav.isSelected = false;
      this.maxReached = false;
    } else {
      this.maxReached = this.favorites.filter(fav => fav.isSelected).length == 4;
      fav.isSelected = !this.maxReached;
    }
    this.checkDisableRelate();
  }

  private checkDisableRelate(){
    let smoIds = this.getSelectedIds();
    this.disableRelate = !smoIds.schools.length && !smoIds.majors.length && !smoIds.occupations.length;
  }

  public showRelations() {
    if ( this.disableRelate )
      return;

    this.showRelate = !this.showRelate;
    if ( !this.showRelate )
      return;

    this.chart.setState(this.getSelectedIds());
  }

  private getSelectedIds(): any {
    let ids = [this.favService.schoolsList, this.favService.majorsList, this.favService.occupationsList]
      .map(favs => favs.filter((f:Favorite) => f.isSelected).map((f:Favorite) => f.itemId));
    return {
      schools: ids[0],
      majors: ids[1],
      occupations: ids[2]
    }
  }

  public editRelations() {
    let smoIds = this.getSelectedIds();
    if( smoIds.schools.length || smoIds.schools.length || smoIds.schools.length ) {
      //this.router.navigateByUrl( '/relate?schools=' + schools.join(',') +'&majors=' + majors.join(',') + '&occupations=' + occupations.join(',') );
      localStorage.setItem( 'pathevo::relate', JSON.stringify( smoIds ) );
      this.router.navigateByUrl( '/relate' );
    }
  }

}
