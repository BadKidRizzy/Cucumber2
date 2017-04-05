Given(/^the user reset password$/) do |table|
  SetData_SignUp = SetDataSignUp.new
  @reset_pass = SetData_SignUp.set_data_sign_up(table)
end

Given(/^the system displayed the user name on the top right corner$/) do
  @page_object.loginDropDown.username_element.when_visible(TIME_OUT_LIMIT)
  expect(@page_object.loginDropDown.username_element.text).to eq (@entry_data["First name"])
end

When(/^the user select Settings from drop down$/) do
  @page_object.loginDropDown.username_element.when_visible(TIME_OUT_LIMIT)
  @page_object.loginDropDown.username_element.click
  
  @page_object.loginDropDown.settings_element.when_visible(TIME_OUT_LIMIT)
  @page_object.loginDropDown.settings_element.click
end

Then(/^the user will get to Settings Page/) do
  @page_object.settingsPage.title_element.when_visible(TIME_OUT_LIMIT)
  expect(@page_object.settingsPage.title_element.text).to eq("Settings")
end

Given(/^the user tries to login by providing Email address and password from above registration information$/) do
  @page_object.loginPage.email_element.when_visible(TIME_OUT_LIMIT)

  @page_object.loginPage.email = @entry_data["Email address"]
  @page_object.loginPage.password = @entry_data["Password"]

  @page_object.loginPage.login_element.when_visible(TIME_OUT_LIMIT)
  @page_object.loginPage.login_element.click
end

When(/^the user change and save the email and text notifications status$/) do
  @page_object.settingsPage.title_element.when_visible(TIME_OUT_LIMIT)
    @email_status = "on"
    @text_status = "on"      
 
  if @page_object.settingsPage.emailOn_selected?
    @page_object.settingsPage.emailOff_element.click
    @email_status = "off"
  else
    @page_object.settingsPage.emailOn_element.click
  end

  if @page_object.settingsPage.textOn_selected?
    @page_object.settingsPage.textOff_element.click
    @text_status = "off"
  else
    @page_object.settingsPage.textOn_element.click
  end
  @page_object.settingsPage.save_element.click
end

Then(/^the system display the change of the email and text notifications status$/) do
  if @email_status == "off"
    expect(@page_object.settingsPage.emailOn_selected?).to be false
  else
    expect(@page_object.settingsPage.emailOn_selected?).to be true
  end

  if @text_status == "off"
    expect(@page_object.settingsPage.emailOn_selected?).to be false
  else
    expect(@page_object.settingsPage.emailOn_selected?).to be true
  end

  @page_object.settingsPage.cancel_element.click
end

When(/^the user change the email and text notifications but did not save it$/) do
  @page_object.settingsPage.title_element.when_visible(TIME_OUT_LIMIT)
    @email_status = "on"
    @text_status = "on"      
 
  if @page_object.settingsPage.emailOn_selected?
    @page_object.settingsPage.emailOff_element.click
    @email_status = "off"
  else
    @page_object.settingsPage.emailOn_element.click
  end

  if @page_object.settingsPage.textOn_selected?
    @page_object.settingsPage.textOff_element.click
    @text_status = "off"
  else
    @page_object.settingsPage.textOn_element.click
  end
  @page_object.settingsPage.cancel_element.click
end

Then(/^the system will disregard the change in the Settings$/) do
  if @email_status == "on"
    expect(@page_object.settingsPage.emailOn_selected?).to be false
  else
    expect(@page_object.settingsPage.emailOn_selected?).to be true
  end

  if @text_status == "on"
    expect(@page_object.settingsPage.emailOn_selected?).to be false
  else
    expect(@page_object.settingsPage.emailOn_selected?).to be true
  end

  @page_object.settingsPage.cancel_element.click
end

Then(/^the user tries to reset the password using the above reset password$/) do
  @page_object.settingsPage.title_element.when_visible(TIME_OUT_LIMIT)

  @page_object.settingsPage.currentPassword = @entry_data["Password"]

  @page_object.settingsPage.newPassword = @reset_pass["Password"]
  @page_object.settingsPage.reType = @reset_pass["Confirm Password"]

  @page_object.settingsPage.save_element.click
end

Given(/^the user should be able to login with the new password$/) do
  @page_object.loginPage.email_element.when_visible(TIME_OUT_LIMIT)

  @page_object.loginPage.email = @entry_data["Email address"]
  @page_object.loginPage.password = @reset_pass["Password"]

  @page_object.loginPage.login_element.when_visible(TIME_OUT_LIMIT)
  @page_object.loginPage.login_element.click
end

Given(/^the user did not make any change in settings$/) do
end

Given(/^the save button will be grayed out$/) do
  @page_object.settingsPage.title_element.when_visible(TIME_OUT_LIMIT)

  expect(@page_object.settingsPage.save_element.enabled?).to be (false)
  @page_object.settingsPage.cancel_element.click
end


