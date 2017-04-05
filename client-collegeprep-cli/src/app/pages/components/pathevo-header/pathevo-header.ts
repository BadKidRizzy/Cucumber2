import { Component, Input, Output, EventEmitter } from '@angular/core';
import { SidebarService } from "client-angular2-components/dist/services/sidebar";
import { UserService } from "client-angular2-components/dist/services/user";
import { FavoritesSidebar } from "client-angular2-components/dist/components/favorites-sidebar";
import { User, Features, FeaturesEnum } from "client-angular2-components/dist/models";
import { MenuSidebar } from "../menu-sidebar/menu-sidebar";
import { Subscription } from 'rxjs/Subscription';

@Component({
  selector: 'pathevo-header',
  templateUrl: './pathevo-header.html',
  styleUrls: ['./pathevo-header.scss']
})

export class PathevoHeader {

  public static TAG: string = 'PathevoHeader';

  @Input() user: User;
  @Input() showNavigation: boolean;
  @Input() showUpgrade: boolean;
  @Input() features: Features;

  @Output() logout = new EventEmitter<any>();
  @Output() favToggled = new EventEmitter<any>();

  constructor(private sidebarService: SidebarService){
    Object.assign(this, FeaturesEnum);
  }

  public toggleMenu(){
    this.sidebarService.eventBus.next({tag: MenuSidebar.TAG, state: SidebarService.TOGGLE});
  }

  public toggleFavs(){
    this.sidebarService.eventBus.next({tag: FavoritesSidebar.TAG, state: SidebarService.TOGGLE});
  }

  public closeAllSidebar(){
    this.sidebarService.eventBus.next({});
  }

}
