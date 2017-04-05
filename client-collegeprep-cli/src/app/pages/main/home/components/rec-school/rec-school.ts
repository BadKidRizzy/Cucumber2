import { Component, Input } from '@angular/core';
import { environment } from "../../../../../../generated.env";

@Component ({
  selector: 'rec-school',
  templateUrl: './rec-school.html'
})

export class RecSchoolComponent {

  @Input() school;
  public contentImageHost: string = environment.imageBasePath;

}
