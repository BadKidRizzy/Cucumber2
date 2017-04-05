import { CollegeprepPage } from './app.po';

describe('collegeprep App', function() {
  let page: CollegeprepPage;

  beforeEach(() => {
    page = new CollegeprepPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
