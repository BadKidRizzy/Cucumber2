import { Component, Input } from '@angular/core';
import { Inject } from '@angular/core';
import { FavoriteService } from "client-angular2-components/dist/services/favorite";
import { environment } from "../../../../../../generated.env";

@Component ({
  selector: 'rec-occupation',
  templateUrl: './rec-occupation.html',
  styleUrls: ['./rec-occupation.scss']
})

export class RecOccupationComponent {

  @Input() occupation;
  public contentImageHost: string;

  constructor(){
    this.contentImageHost = environment.imageBasePath;
  }

}
