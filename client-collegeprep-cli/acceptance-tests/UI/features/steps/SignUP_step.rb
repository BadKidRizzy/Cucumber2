When(/^the user do not provide the 'First name'$/) do |table|
  SetData_SignUp = SetDataSignUp.new
  table_data = SetData_SignUp.set_data_sign_up(table)

  @page_object.signUpPage.lastName = table_data["Last name"]
  @page_object.signUpPage.email = table_data["Email address"]

  @page_object.signUpPage.birthMonth = table_data["Birth Month"]
  @page_object.signUpPage.birthDay = table_data["Birth Day"]
  @page_object.signUpPage.birthYear = table_data["Birth Year"]

  @page_object.signUpPage.password = table_data["Password"]
  @page_object.signUpPage.confirmPassword = table_data["Confirm Password"]

  @page_object.signUpPage.tosCheckBox_element.click if table_data["TOS CheckBox"].upcase == "TRUE"
end

When(/^the user do not provide the 'Last name'$/) do |table|
  SetData_SignUp = SetDataSignUp.new
  table_data = SetData_SignUp.set_data_sign_up(table)

  @page_object.signUpPage.firstName = table_data["First name"]
  @page_object.signUpPage.email = table_data["Email address"]

  @page_object.signUpPage.birthMonth = table_data["Birth Month"]
  @page_object.signUpPage.birthDay = table_data["Birth Day"]
  @page_object.signUpPage.birthYear = table_data["Birth Year"]

  @page_object.signUpPage.password = table_data["Password"]
  @page_object.signUpPage.confirmPassword = table_data["Confirm Password"]

  @page_object.signUpPage.tosCheckBox_element.click if table_data["TOS CheckBox"].upcase == "TRUE"
end

When(/^the user do not provide the 'Email address'$/) do |table|
  table_data = SetData_SignUp.set_data_sign_up(table)

  @page_object.signUpPage.firstName = table_data["First name"]
  @page_object.signUpPage.lastName = table_data["Last name"]

  @page_object.signUpPage.birthMonth = table_data["Birth Month"]
  @page_object.signUpPage.birthDay = table_data["Birth Day"]
  @page_object.signUpPage.birthYear = table_data["Birth Year"]

  @page_object.signUpPage.password = table_data["Password"]
  @page_object.signUpPage.confirmPassword = table_data["Confirm Password"]

  @page_object.signUpPage.tosCheckBox_element.click if table_data["TOS CheckBox"].upcase == "TRUE"
end

When(/^the user do not provide the 'Birth Month'$/) do |table|
  SetData_SignUp = SetDataSignUp.new
  table_data = SetData_SignUp.set_data_sign_up(table)

  @page_object.signUpPage.firstName = table_data["First name"]
  @page_object.signUpPage.lastName = table_data["Last name"]
  @page_object.signUpPage.email = table_data["Email address"]

  @page_object.signUpPage.birthDay = table_data["Birth Day"]
  @page_object.signUpPage.birthYear = table_data["Birth Year"]

  @page_object.signUpPage.password = table_data["Password"]
  @page_object.signUpPage.confirmPassword = table_data["Confirm Password"]

  @page_object.signUpPage.tosCheckBox_element.click if table_data["TOS CheckBox"].upcase == "TRUE"
end

When(/^the user do not provide the 'Birth Day '$/) do |table|
  SetData_SignUp = SetDataSignUp.new
  table_data = SetData_SignUp.set_data_sign_up(table)

  @page_object.signUpPage.firstName = table_data["First name"]
  @page_object.signUpPage.lastName = table_data["Last name"]
  @page_object.signUpPage.email = table_data["Email address"]

  @page_object.signUpPage.birthMonth = table_data["Birth Month"]
  @page_object.signUpPage.birthYear = table_data["Birth Year"]

  @page_object.signUpPage.password = table_data["Password"]
  @page_object.signUpPage.confirmPassword = table_data["Confirm Password"]

  @page_object.signUpPage.tosCheckBox_element.click if table_data["TOS CheckBox"].upcase == "TRUE"
end

When(/^the user do not provide the 'Birth Year'$/) do |table|
  SetData_SignUp = SetDataSignUp.new
  table_data = SetData_SignUp.set_data_sign_up(table)

  @page_object.signUpPage.firstName = table_data["First name"]
  @page_object.signUpPage.lastName = table_data["Last name"]
  @page_object.signUpPage.email = table_data["Email address"]

  @page_object.signUpPage.birthMonth = table_data["Birth Month"]
  @page_object.signUpPage.birthDay = table_data["Birth Day"]

  @page_object.signUpPage.password = table_data["Password"]
  @page_object.signUpPage.confirmPassword = table_data["Confirm Password"]

  @page_object.signUpPage.tosCheckBox_element.click if table_data["TOS CheckBox"].upcase == "TRUE"
end

When(/^the user do not provide the 'Password'$/) do |table|
  SetData_SignUp = SetDataSignUp.new
  table_data = SetData_SignUp.set_data_sign_up(table)

  @page_object.signUpPage.firstName = table_data["First name"]
  @page_object.signUpPage.lastName = table_data["Last name"]
  @page_object.signUpPage.email = table_data["Email address"]

  @page_object.signUpPage.birthMonth = table_data["Birth Month"]
  @page_object.signUpPage.birthDay = table_data["Birth Day"]
  @page_object.signUpPage.birthYear = table_data["Birth Year"]

  @page_object.signUpPage.confirmPassword = table_data["Confirm Password"]

  @page_object.signUpPage.tosCheckBox_element.click if table_data["TOS CheckBox"].upcase == "TRUE"
end

When(/^the user do not provide the 'Confirm Password'$/) do |table|
  SetData_SignUp = SetDataSignUp.new
  table_data = SetData_SignUp.set_data_sign_up(table)

  @page_object.signUpPage.firstName = table_data["First name"]
  @page_object.signUpPage.lastName = table_data["Last name"]
  @page_object.signUpPage.email = table_data["Email address"]

  @page_object.signUpPage.birthMonth = table_data["Birth Month"]
  @page_object.signUpPage.birthDay = table_data["Birth Day"]
  @page_object.signUpPage.birthYear = table_data["Birth Year"]

  @page_object.signUpPage.password = table_data["Password"]

  @page_object.signUpPage.tosCheckBox_element.click if table_data["TOS CheckBox"].upcase == "TRUE"
end

When(/^the user do not agreed to the 'ToS'$/) do |table|
  SetData_SignUp = SetDataSignUp.new
  table_data = SetData_SignUp.set_data_sign_up(table)

  @page_object.signUpPage.firstName = table_data["First name"]
  @page_object.signUpPage.lastName = table_data["Last name"]
  @page_object.signUpPage.email = table_data["Email address"]

  @page_object.signUpPage.birthMonth = table_data["Birth Month"]
  @page_object.signUpPage.birthDay = table_data["Birth Day"]
  @page_object.signUpPage.birthYear = table_data["Birth Year"]

  @page_object.signUpPage.password = table_data["Password"]
  @page_object.signUpPage.confirmPassword = table_data["Confirm Password"]
end

When(/^the user provides all required information$/) do |table|
  SetData_SignUp = SetDataSignUp.new
  table_data = SetData_SignUp.set_data_sign_up(table)
  @expected_table_data = table_data

  @page_object.signUpPage.firstName = table_data["First name"]
  @page_object.signUpPage.lastName = table_data["Last name"]
  @page_object.signUpPage.email = table_data["Email address"]

  @page_object.signUpPage.birthMonth = table_data["Birth Month"]
  @page_object.signUpPage.birthDay = table_data["Birth Day"]
  @page_object.signUpPage.birthYear = table_data["Birth Year"]

  @page_object.signUpPage.password = table_data["Password"]
  @page_object.signUpPage.confirmPassword = table_data["Confirm Password"]

  @page_object.signUpPage.tosCheckBox_element.click if table_data["TOS CheckBox"].upcase == "TRUE"
end

Then(/^the system should not allow the user to complete the registration$/) do
  expect(@page_object.signUpPage.signUp_element.enabled?).to be (false)
end

Then(/^the system should allow the user to complete the registration$/) do
  expect(@page_object.signUpPage.signUp_element.enabled?).to be (true)
end

Then(/^the system should display Home Page icon$/) do
  home_page_icon = false
  expect(home_page_icon).to be (true)
end

Then(/^the system should display "([^"]*)" on the SignUp Page$/) do |arg1|
  home_page_icon = false
  expect(home_page_icon).to be (true)
end

Then(/^the system should login the user with displaying the user name on the top right corner$/) do
  expect(@page_object.signUpPage.signUp_element.enabled?).to be (true)
  @page_object.signUpPage.signUp_element.click
  @page_object.signUpPage.username_element.when_visible(TIME_OUT_LIMIT)
  expect(@page_object.signUpPage.username_element.text).to eq (@expected_table_data["First name"]) 
end

When(/^the user try to use the email address that been used before to register$/) do |table|
   SetData_SignUp = SetDataSignUp.new
  table_data = SetData_SignUp.set_data_sign_up(table)
  @expected_table_data = table_data

  @page_object.signUpPage.firstName = table_data["First name"]
  @page_object.signUpPage.lastName = table_data["Last name"]
  @page_object.signUpPage.email = table_data["Email address"]

  @page_object.signUpPage.birthMonth = table_data["Birth Month"]
  @page_object.signUpPage.birthDay = table_data["Birth Day"]
  @page_object.signUpPage.birthYear = table_data["Birth Year"]

  @page_object.signUpPage.password = table_data["Password"]
  @page_object.signUpPage.confirmPassword = table_data["Confirm Password"]

  @page_object.signUpPage.tosCheckBox_element.click if table_data["TOS CheckBox"].upcase == "TRUE"
end

Then(/^the user logout for user home page$/) do
   @page_object.signUpPage.username_element.when_visible(TIME_OUT_LIMIT)
    @page_object.signUpPage.username_element.click
    # sleep 10
     # @page_object.signUpPage.logout_element.click
end


Then(/^the system should notify the user that the email address been used$/) do
  expect(@page_object.signUpPage.signUp_element.enabled?).to be (true)
  @page_object.signUpPage.signUp_element.click

  BROWSER.body(:text => /Email is taken/).when_present(TIME_OUT_LIMIT).text

  error_message = "Email is taken"
  signUp_container_elements = BROWSER.body(:text => /Already have an account/).text
  expect(signUp_container_elements.include? error_message).to be (true)
end
 
 #---------

 When(/^the user provides all required information to register and login$/) do |table|
  SetData_SignUp = SetDataSignUp.new
  @table_data = SetData_SignUp.set_data_sign_up(table)
  WaitUtility.wait_untill_elements_size_steadied

  @page_object.signUpPage.loginHere_element.click
  WaitUtility.wait_untill_elements_size_steadied

  @page_object.loginPage.email = @table_data["Email address"]
  @page_object.loginPage.password = @table_data["Password"]

  @page_object.loginPage.login_element.click
  WaitUtility.waitWhileSpinnerPresent(45)

  if @page_object.loginPage.loginError_element.visible?
    @page_object.loginPage.signUpHere_element.click

    @page_object.signUpPage.firstName_element.when_visible(TIME_OUT_LIMIT)
    WaitUtility.wait_untill_elements_size_steadied

    @page_object.signUpPage.firstName = @table_data["First name"]
    @page_object.signUpPage.lastName = @table_data["Last name"]
    @page_object.signUpPage.email = @table_data["Email address"]

    @page_object.signUpPage.birthMonth = @table_data["Birth Month"]
    @page_object.signUpPage.birthDay = @table_data["Birth Day"]
    @page_object.signUpPage.birthYear = @table_data["Birth Year"]

    @page_object.signUpPage.password = @table_data["Password"]
    @page_object.signUpPage.confirmPassword = @table_data["Confirm Password"]

    @page_object.signUpPage.tosCheckBox_element.click if @table_data["TOS CheckBox"].upcase == "TRUE"

    @page_object.signUpPage.signUp_element.click
    WaitUtility.waitWhileSpinnerPresent(45)
  end
end

Then(/^the system should displaying the user name on the top right corner$/) do
  @page_object.loginDropDown.username_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  expect(@page_object.loginDropDown.username_element.text).to eq (@table_data["First name"])
end

