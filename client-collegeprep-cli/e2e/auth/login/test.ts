import { LoginPage } from './page';
import { browser } from 'protractor';

describe('/auth/login', function() {

  let page: LoginPage;

  beforeEach(() => {
    page = new LoginPage();
    browser.get('/auth/login');
  });

  it('mocked api test', () => {
    //TODO mocking http in protractor not yet implemented
    expect(true).toEqual(true);
  });

});
