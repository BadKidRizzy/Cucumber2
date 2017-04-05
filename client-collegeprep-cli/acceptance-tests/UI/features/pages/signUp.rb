class SignUpPage
  include PageObject
  page_url('/auth/sign-up')
  
  text_field(:firstName, :id => 'first-name')
  text_field(:lastName, :id => 'last-name')
  text_field(:email, :id => 'email')
  text_field(:password, :id => 'pass')
  text_field(:confirmPassword, :id => 'confirm-pass')


  select_list(:birthMonth, :id => 'birth-month')
  select_list(:birthDay, :id => 'birth-day')
  select_list(:birthYear, :id => 'birth-year')

  checkbox(:tosCheckBox, :id => 'tos-checkbox')

  # span(:signUp, :css => '.sign-up')
  button(:signUp, :css => ".btn.btn-primary")
  link(:login, :css => '.btn.col-xs-5.pull-right')

  
  span(:username, :css => '.name')
  link(:logout, :css => '.icon.icon-log-out')
  # link(:signUP, :text => 'Sign up')
  # link(:login, :test => 'Log in')

  span(:errorHelp, :css => '.help-block')

  link(:loginHere, :css => "a[href$='login']")
end
