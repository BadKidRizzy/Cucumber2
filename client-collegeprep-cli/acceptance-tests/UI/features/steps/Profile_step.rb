When(/^the user information for registration$/) do |table|
  SetData_SignUp ||= SetDataSignUp.new
  @entry_data = SetData_SignUp.set_data_sign_up(table)
end

When(/^the user information for edittion$/) do |table|
  SetData_SignUp = SetDataSignUp.new if SetData_SignUp == nil
  @edit_data = SetData_SignUp.set_data_sign_up(table)
end

Given(/^the user information for canceltion$/) do |table|
  SetData_SignUp = SetDataSignUp.new if SetData_SignUp == nil
  @cancel_data = SetData_SignUp.set_data_sign_up(table)
end


When(/^the user register with above registration information and login$/) do
  # SetData_SignUp = SetDataSignUp.new
  # @entry_data = SetData_SignUp.set_data_sign_up(table)
  WaitUtility.wait_untill_elements_size_steadied

  @page_object.signUpPage.loginHere_element.click
  WaitUtility.wait_untill_elements_size_steadied

  @page_object.loginPage.email = @entry_data["Email address"]
  @page_object.loginPage.password = @entry_data["Password"]

  @page_object.loginPage.login_element.click
  WaitUtility.waitWhileSpinnerPresent(45)

  if @page_object.loginPage.loginError_element.visible?
    @page_object.loginPage.signUpHere_element.click

    @page_object.signUpPage.firstName_element.when_visible(TIME_OUT_LIMIT)
    WaitUtility.wait_untill_elements_size_steadied

    @page_object.signUpPage.firstName = @entry_data["First name"]
    @page_object.signUpPage.lastName = @entry_data["Last name"]
    @page_object.signUpPage.email = @entry_data["Email address"]

    @page_object.signUpPage.birthMonth = @entry_data["Birth Month"]
    @page_object.signUpPage.birthDay = @entry_data["Birth Day"]
    @page_object.signUpPage.birthYear = @entry_data["Birth Year"]

    @page_object.signUpPage.password = @entry_data["Password"]
    @page_object.signUpPage.confirmPassword = @entry_data["Confirm Password"]

    @page_object.signUpPage.tosCheckBox_element.click if @entry_data["TOS CheckBox"].upcase == "TRUE"

    @page_object.signUpPage.signUp_element.click
    WaitUtility.waitWhileSpinnerPresent(45)
  end

end

Then(/^the system displayed the user name \- form above registration information \- on the top right corner$/) do
  @page_object.loginDropDown.username_element.when_visible(TIME_OUT_LIMIT)
  expect(@page_object.loginDropDown.username_element.text).to eq (@entry_data["First name"])
end

Then(/^the system displayed the user name \- form above edition information \- on the top right corner$/) do
  @page_object.loginDropDown.username_element.when_visible(TIME_OUT_LIMIT)
  expect(@page_object.loginDropDown.username_element.text).to eq (@entry_data["First name"])
end


Then(/^the user complete the registration with displaying the user name on the top right corner$/) do
  @page_object.signUpPage.signUp_element.click

  @page_object.loginDropDown.username_element.when_visible(TIME_OUT_LIMIT)
  expect(@page_object.loginDropDown.username_element.text).to eq (@entry_data["First name"]) 
end

Then(/^the user login with displaying the user name on the top right corner$/) do
  @page_object.loginPage.login_element.when_visible(TIME_OUT_LIMIT)
  @page_object.loginPage.login_element.click

  @page_object.loginDropDown.username_element.when_visible(TIME_OUT_LIMIT)
  expect(@page_object.loginDropDown.username_element.text).to eq (@entry_data["First name"]) 
end

Then(/^the user should be able to logout$/) do
  @page_object.loginDropDown.username_element.when_visible(TIME_OUT_LIMIT)
  @page_object.loginDropDown.username_element.click
  
  @page_object.loginDropDown.logOut_element.when_visible(TIME_OUT_LIMIT)
  @page_object.loginDropDown.logOut_element.click
end

When(/^the user login by providing Email address and Password from above registration information$/) do
  @page_object.loginPage.email_element.when_visible(TIME_OUT_LIMIT)

  @page_object.loginPage.email = @entry_data["Email address"]
  @page_object.loginPage.password = @entry_data["Password"]

  @page_object.loginPage.login_element.when_visible(TIME_OUT_LIMIT)
  @page_object.loginPage.login_element.click
end

When(/^the user login by providing Email address and Password from above edition information$/) do
  @page_object.loginPage.email_element.when_visible(TIME_OUT_LIMIT)

  @page_object.loginPage.email = @edit_data["Email address"]
  @page_object.loginPage.password = @edit_data["Password"]

  @page_object.loginPage.login_element.when_visible(TIME_OUT_LIMIT)
  @page_object.loginPage.login_element.click
end

When(/^the user login by providing Email address and Password from above canceltion information$/) do
  @page_object.loginPage.email_element.when_visible(TIME_OUT_LIMIT)

  @page_object.loginPage.email = @cancel_data["Email address"]
  @page_object.loginPage.password = @cancel_data["Password"]

  @page_object.loginPage.login_element.when_visible(TIME_OUT_LIMIT)
  @page_object.loginPage.login_element.click
end

Then(/^the user select Profile from drop down$/) do
  @page_object.loginDropDown.username_element.when_visible(TIME_OUT_LIMIT)
  @page_object.loginDropDown.username_element.click
  
  @page_object.loginDropDown.profile_element.when_visible(TIME_OUT_LIMIT)
  @page_object.loginDropDown.profile_element.click
end

Then(/^the user will view 'Full Name', 'Email address' and 'Birth date' at the profile match with above registration information$/) do
  data_list = ["name", "birth"]
  profile_data_view = profile_data_sort(data_list, @entry_data)

  @page_object.profilePage.title_element.when_visible(TIME_OUT_LIMIT)
  
  profile_container_elements = BROWSER.body(:text => /Gender/).text

  profile_data_comper(profile_data_view, profile_container_elements)  
end

When(/^the user edit and save the profile based on the above edition information$/) do
  @page_object.profilePage.edit_element.when_visible(TIME_OUT_LIMIT)
  @page_object.profilePage.edit_element.click
  data_entry_input(@edit_data)
  # sleep 5
  @page_object.profilePage.save_element.when_visible(TIME_OUT_LIMIT)
  @page_object.profilePage.save_element.click
end

Then(/^the user will view the change that made based on the above edition information into the profile$/) do
  @page_object.profilePage.title_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  # data_list = ["name", "email", "birth", "school", "gender", "citizenship", "ethnicity", "race", "phone"]
  data_list = ["name", "birth", "school", "gender", "citizenship", "ethnicity", "race", "phone"]
  profile_data_view = profile_data_sort(data_list, @edit_data)

  @page_object.profilePage.title_element.when_visible(TIME_OUT_LIMIT)
  
  profile_container_elements = BROWSER.body(:text => /Gender/).text
  # sleep 10
  profile_data_comper(profile_data_view, profile_container_elements) 
end

When(/^the user edit the profile but did not save the information$/) do
  @page_object.profilePage.edit_element.when_visible(TIME_OUT_LIMIT)
  @page_object.profilePage.edit_element.click

  data_entry_input(@cancel_data)
  # sleep 5
  @page_object.profilePage.cancel_element.when_visible(TIME_OUT_LIMIT)
  @page_object.profilePage.cancel_element.click
end

Then(/^the system should not make any change into the profile$/) do
  data_list = ["name", "email", "birth", "school", "gender", "citizenship", "ethnicity", "race", "phone"]
  profile_data_view = profile_data_sort(data_list, @edit_data)

  @page_object.profilePage.title_element.when_visible(TIME_OUT_LIMIT)
  
  profile_container_elements = BROWSER.body(:text => /Gender/).text
  # sleep 10
  profile_data_comper(profile_data_view, profile_container_elements) 
end

def profile_data_sort(data_list, inout_data)
  data_view = []
  data_list.each do |list|
    case list
      when 'name'
        data_view = data_view + [inout_data["First name"] + ' ' + inout_data["Last name"]]
      when 'email'
        data_view = data_view + [inout_data["Email address"]]
      when 'birth'
        data_view = data_view + [inout_data["Birth Month"] + " " + inout_data["Birth Day"] + ', ' + inout_data["Birth Year"]]
      when 'school'
        data_view = data_view + [inout_data["High School"]]
      when 'gender'
        data_view = data_view + [inout_data["Gender"]]
      when 'citizenship'
        data_view = data_view + [inout_data["Citizenship"]]
      when 'ethnicity'
        data_view = data_view + [inout_data["Ethnicity"]]
      when 'race'
        data_view = data_view + [inout_data["Race"]]
      when 'phone'
        data_view = data_view + [inout_data["Phone Number"]]
    end
  end  
  return data_view
end

def profile_data_comper(data_expected, container_elements)
  data_expected.each do |expect_data|
    error_msg = "Could not find the expected data: #{expect_data} \n into: \n #{container_elements}"
    fail error_msg unless container_elements.include? expect_data
  end
end

def data_entry_input(expected_entry_data)
  @page_object.profilePage.firstName = expected_entry_data["First name"]
  @page_object.profilePage.lastName = expected_entry_data["Last name"]
  @page_object.profilePage.schoolName = expected_entry_data["High School"]

  BROWSER.radio(:value => expected_entry_data["Gender"]).set

  @page_object.profilePage.citizenship = expected_entry_data["Citizenship"]
  @page_object.profilePage.ethnicity = expected_entry_data["Ethnicity"]
  @page_object.profilePage.race = expected_entry_data["Race"]

  @page_object.profilePage.birthMonth = expected_entry_data["Birth Month"]
  @page_object.profilePage.birthDay = expected_entry_data["Birth Day"]
  @page_object.profilePage.birthYear = expected_entry_data["Birth Year"]

  # @page_object.profilePage.email = expected_entry_data["Email address"]
  @page_object.profilePage.phone = expected_entry_data["Phone Number"]
end



