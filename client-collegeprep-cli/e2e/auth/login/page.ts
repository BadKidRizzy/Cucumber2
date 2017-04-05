import { browser, $, element, by, ElementFinder } from 'protractor';

export class LoginPage {

  emailInput: ElementFinder;
  passInput: ElementFinder;
  loginBtn: ElementFinder;
  loginErrorMsg: ElementFinder;

  constructor() {
    this.emailInput = $('input#email');
    this.passInput = $('input#pass');
    this.loginBtn = $('button#login');
    this.loginErrorMsg = $('#login-error');
  }

}
