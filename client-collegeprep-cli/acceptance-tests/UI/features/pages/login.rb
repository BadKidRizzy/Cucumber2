class LoginPage
  include PageObject
  page_url('/auth/login')
  
  text_field(:email, :id => 'email')
  text_field(:password, :id => 'pass')

  # span(:login, :css => ".login")
  button(:login, :css => ".btn.btn-default-invert" )
  # link(:login, :css => '.btn.btn-default.col-xs-5')
  link(:signUp, :css => "a[href$='sign-up']")

  link(:forgotPass, :css => "a[href$='forgot-pass']")

  div(:loginError, :css => '#login-error')

  link(:signUpHere, :css => "a[href$='sign-up']")

  span(:emailValidation, :css => '.help-block')
end
