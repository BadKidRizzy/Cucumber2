import { Component } from '@angular/core';
import { HighlightService } from "./service";

@Component({
  selector: 'highlights-card',
  templateUrl: './view.html'
})
export class HighlightsCardComponent {

  public static TAG: string = "HighlightsCardComponent";
  public highlights: Array<any>;

  constructor(private highlightService: HighlightService) {}

  public ngOnInit() {
    this.highlightService.queryHighlights().then((arr) => this.highlights = arr);
  }

}
