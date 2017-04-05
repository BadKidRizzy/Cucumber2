import { Component, Input } from '@angular/core';
import { environment } from "../../../../../../generated.env";

@Component ({
  selector: 'rec-major',
  templateUrl: './rec-major.html',
  styleUrls: ['./rec-major.scss']
})

export class RecMajorComponent {

  @Input() major;
  public contentImageHost: string = environment.imageBasePath;

}
