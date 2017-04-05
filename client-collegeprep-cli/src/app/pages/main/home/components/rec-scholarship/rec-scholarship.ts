import { Component, Input } from '@angular/core';

@Component ({
  selector: 'rec-scholarship',
  templateUrl: 'rec-scholarship.html'
})

export class RecSchoolarshipComponent {

  @Input() scholarship;

}
