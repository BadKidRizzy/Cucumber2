import { LoginPage } from './page';
import { browser } from 'protractor';

describe('/auth/login', function() {

  let page: LoginPage;

  beforeEach(() => {
    page = new LoginPage();
    browser.get('/auth/login');
  });

  it('displays error message for not registered users', () => {
    page.emailInput.sendKeys('not.register@email.com');
    page.passInput.sendKeys('qwe123');
    expect(page.loginErrorMsg.isDisplayed()).toEqual(false);
    page.loginBtn.click();
    expect(page.loginErrorMsg.isDisplayed()).toEqual(true);
    expect(page.loginErrorMsg.getText()).toContain('email/password is not recognized');
  });

});