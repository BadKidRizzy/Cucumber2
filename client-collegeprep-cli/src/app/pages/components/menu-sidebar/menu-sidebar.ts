import { Component, Input, Output, EventEmitter, animate, trigger, state, style, transition } from '@angular/core';
import { SidebarService, SidebarEvent } from "client-angular2-components/dist/services/sidebar";
import { UserService } from "client-angular2-components/dist/services/user";
import { User, Features, FeaturesEnum } from "client-angular2-components/dist/models";
import { Subscription } from 'rxjs/Subscription';
declare var moment: any;

@Component({
  selector: 'menu-sidebar',
  templateUrl: './menu-sidebar.html',
  styleUrls: ['./menu-sidebar.scss'],
  animations: [
    trigger('visibility', [
      state(SidebarService.SHOWN, style({left: 0})),
      state(SidebarService.HIDDEN, style({display: 'none'})),
      transition('* => *', [
        animate('.3s'),
      ])
    ]),
  ]
})

export class MenuSidebar {

  public static TAG: string = 'MenuSidebar';

  @Input() user: User;
  @Input() features: Features;
  @Input() showUpgrade: boolean;
  @Output() toggled = new EventEmitter<any>();
  @Output() logout = new EventEmitter<any>();

  public visibility: string = SidebarService.HIDDEN;
  public currentYear = moment().year();

  private sub: Subscription;

  constructor(private sidebarService: SidebarService){
    Object.assign(this, FeaturesEnum);
  }

  public ngOnInit(){
    this.sub = this.sidebarService.eventBus.subscribe((e: SidebarEvent) => {
      SidebarService.toggleFn(this, e, MenuSidebar.TAG);
      if ( e.tag == MenuSidebar.TAG )
        this.toggled.emit(this.visibility == SidebarService.SHOWN ? SidebarService.SHOWN : SidebarService.HIDDEN )
    });
  }

  public ngOnDestroy(){
    this.sub.unsubscribe();
  }

  public hide(){
    this.visibility = SidebarService.HIDDEN;
    this.toggled.emit(SidebarService.HIDDEN);
  }

}
