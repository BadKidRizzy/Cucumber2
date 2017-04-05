When(/^the user A information for registration$/) do |table|
  SetData_SignUp ||= SetDataSignUp.new
  @entry_data_userA = SetData_SignUp.set_data_sign_up(table)
end

When(/^the user B information for registration$/) do |table|
  SetData_SignUp = SetDataSignUp.new if SetData_SignUp == nil
  @entry_data_userB = SetData_SignUp.set_data_sign_up(table)
end

When(/^the user A register with above registration information$/) do
  @page_object.signUpPage.firstName_element.when_visible(TIME_OUT_LIMIT)

  @page_object.signUpPage.firstName = @entry_data_userA["First name"]
  @page_object.signUpPage.lastName = @entry_data_userA["Last name"]
  @page_object.signUpPage.email = @entry_data_userA["Email address"]

  @page_object.signUpPage.birthMonth = @entry_data_userA["Birth Month"]
  @page_object.signUpPage.birthDay = @entry_data_userA["Birth Day"]
  @page_object.signUpPage.birthYear = @entry_data_userA["Birth Year"]

  @page_object.signUpPage.password = @entry_data_userA["Password"]
  @page_object.signUpPage.confirmPassword = @entry_data_userA["Confirm Password"]

  @page_object.signUpPage.tosCheckBox_element.click if @entry_data_userA["TOS CheckBox"].upcase == "TRUE"

  @page_object.signUpPage.signUp_element.click
end

When(/^the user A register and login with above registration information$/) do
  @page_object.loginPage.email_element.when_visible(TIME_OUT_LIMIT)

  @page_object.loginPage.email = @entry_data_userA["Email address"]
  @page_object.loginPage.password = @entry_data_userA["Password"]

  @page_object.loginPage.login_element.click
  WaitUtility.waitWhileSpinnerPresent(45)

  if @page_object.loginPage.loginError_element.visible?
    @page_object.loginPage.signUp_element.click

    @page_object.signUpPage.firstName_element.when_visible(TIME_OUT_LIMIT)
    WaitUtility.wait_untill_elements_size_steadied

    @page_object.signUpPage.firstName = @entry_data_userA["First name"]
    @page_object.signUpPage.lastName = @entry_data_userA["Last name"]
    @page_object.signUpPage.email = @entry_data_userA["Email address"]

    @page_object.signUpPage.birthMonth = @entry_data_userA["Birth Month"]
    @page_object.signUpPage.birthDay = @entry_data_userA["Birth Day"]
    @page_object.signUpPage.birthYear = @entry_data_userA["Birth Year"]

    @page_object.signUpPage.password = @entry_data_userA["Password"]
    @page_object.signUpPage.confirmPassword = @entry_data_userA["Confirm Password"]

    @page_object.signUpPage.tosCheckBox_element.click if @entry_data_userA["TOS CheckBox"].upcase == "TRUE"

    @page_object.signUpPage.signUp_element.click
  end
end

When(/^the user B register with above registration information$/) do
  @page_object.signUpPage.firstName_element.when_visible(TIME_OUT_LIMIT)

  @page_object.signUpPage.firstName = @entry_data_userB["First name"]
  @page_object.signUpPage.lastName = @entry_data_userB["Last name"]
  @page_object.signUpPage.email = @entry_data_userB["Email address"]

  @page_object.signUpPage.birthMonth = @entry_data_userB["Birth Month"]
  @page_object.signUpPage.birthDay = @entry_data_userB["Birth Day"]
  @page_object.signUpPage.birthYear = @entry_data_userB["Birth Year"]

  @page_object.signUpPage.password = @entry_data_userB["Password"]
  @page_object.signUpPage.confirmPassword = @entry_data_userB["Confirm Password"]

  @page_object.signUpPage.tosCheckBox_element.click if @entry_data_userB["TOS CheckBox"].upcase == "TRUE"

  @page_object.signUpPage.signUp_element.click
end

When(/^the user B register and login with above registration information$/) do
  @page_object.loginPage.email_element.when_visible(TIME_OUT_LIMIT)

  @page_object.loginPage.email = @entry_data_userB["Email address"]
  @page_object.loginPage.password = @entry_data_userB["Password"]

  @page_object.loginPage.login_element.click
  WaitUtility.waitWhileSpinnerPresent(45)

  if @page_object.loginPage.loginError_element.visible?
    @page_object.loginPage.signUp_element.click

    @page_object.signUpPage.firstName_element.when_visible(TIME_OUT_LIMIT)
    WaitUtility.wait_untill_elements_size_steadied

    @page_object.signUpPage.firstName = @entry_data_userB["First name"]
    @page_object.signUpPage.lastName = @entry_data_userB["Last name"]
    @page_object.signUpPage.email = @entry_data_userB["Email address"]

    @page_object.signUpPage.birthMonth = @entry_data_userB["Birth Month"]
    @page_object.signUpPage.birthDay = @entry_data_userB["Birth Day"]
    @page_object.signUpPage.birthYear = @entry_data_userB["Birth Year"]

    @page_object.signUpPage.password = @entry_data_userB["Password"]
    @page_object.signUpPage.confirmPassword = @entry_data_userB["Confirm Password"]

    @page_object.signUpPage.tosCheckBox_element.click if @entry_data_userB["TOS CheckBox"].upcase == "TRUE"

    @page_object.signUpPage.signUp_element.click
  end
end

Then(/^the system displayed the user A name on the top right corner$/) do
  @page_object.loginDropDown.username_element.when_visible(TIME_OUT_LIMIT)
  expect(@page_object.loginDropDown.username_element.text).to eq (@entry_data_userA["First name"])
end

Then(/^the system displayed the user B name on the top right corner$/) do
  @page_object.loginDropDown.username_element.when_visible(TIME_OUT_LIMIT)
  expect(@page_object.loginDropDown.username_element.text).to eq (@entry_data_userB["First name"])
end

When(/^the user A tries to login by typing his Email address in capital letter and password$/) do
  @page_object.loginPage.email_element.when_visible(TIME_OUT_LIMIT)
  
  @page_object.loginPage.email = @entry_data_userA["Email address"].upcase
  @page_object.loginPage.password = @entry_data_userA["Password"]

  @page_object.loginPage.login_element.click
  WaitUtility.waitWhileSpinnerPresent(45)
end

When(/^the user A tries to login by providing his Email address and user B password$/) do
  @page_object.loginPage.email_element.when_visible(TIME_OUT_LIMIT)

  @page_object.loginPage.email = @entry_data_userA["Email address"]
  @page_object.loginPage.password = @entry_data_userB["Password"]

  @page_object.loginPage.login_element.click
  WaitUtility.waitWhileSpinnerPresent(45)
end

When(/^the user A tries to login by just providing his Email address$/) do
  @page_object.loginPage.email_element.when_visible(TIME_OUT_LIMIT)

  @page_object.loginPage.email = @entry_data_userA["Email address"]
  # @page_object.loginPage.password = @entry_data_userB["Password"]
end

When(/^the user B tries to login by just providing his password$/) do
  @page_object.loginPage.email_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.loginPage.email = @entry_data_userA["Email address"]
  @page_object.loginPage.password = @entry_data_userB["Password"]
end

Then(/^the system will not allowed user A to login$/) do
  expect(@page_object.loginPage.login_element.enabled?).to be (false)
end

Then(/^the system will not allowed user B to login$/) do
  expect(@page_object.loginPage.login_element.enabled?).to be (false)
end

When(/^the user A tries to login using email address with extra empty space$/) do
  @page_object.loginPage.email_element.when_visible(TIME_OUT_LIMIT)
  
  @page_object.loginPage.email = @entry_data_userA["Email address"] + "  "
  @page_object.loginPage.password = @entry_data_userA["Password"]

  # @page_object.loginPage.login_element.click
end

Then(/^the system should not display error message$/) do
  # WaitUtility.waitWhileSpinnerPresent(45)
  
  err_msg = "the system should not display error message when the email address has extra empty space"
  fail err_msg if @page_object.loginPage.emailValidation_element.visible?
end


