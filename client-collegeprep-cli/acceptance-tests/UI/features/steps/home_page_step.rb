
Then(/^the Favorites section will display$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)

  expect(@page_object.homePage.favorites_element.text).to eq("Favorites")
end

Then(/^the Assessments section will display$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.assessments_element.when_visible(TIME_OUT_LIMIT)
   
  expect(@page_object.homePage.assessments_element.text).to eq("Assessments")
end

Then(/^the Highlights section will display$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.highlights_element.when_visible(TIME_OUT_LIMIT)
   
  expect(@page_object.homePage.highlights_element.text).to eq("Highlights")
end

Then(/^the favorites button should be disable$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)
  
  begin
    @page_object.homePage.favoriteBut_element.click
    result = false
  rescue Exception => e
    message = e.to_s
    result = true if message.include? 'disabled="true"'
  end
  expect(result).to eq(true), "The user did not login the favorite button should be disabled"
end


Then(/^the X button should be click\-able$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)

  begin
      @page_object.homePage.ignoreBut_element.click
      result = true
    rescue Exception => e
      result = false
    end
    expect(result).to eq(true), "The X button should be click-able"
end

When(/^the user click X button in Favorites section$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)

  @old_title_text = @page_object.homePage.cardTitle_element.text

  @page_object.homePage.ignoreBut_element.click
end

Then(/^the system will display new selection in Favorites section$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)

  new_title_text = @page_object.homePage.cardTitle_element.text
  
  fail "The card title should be change when the user click X button" if new_title_text == @old_title_text
end

Then(/^the "([^"]*)" favorites should be click\-able$/) do |section|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)
  begin
    case section.downcase.strip
    when "schools"
      @page_object.homePage.schools_element.click
    when "majors"
      @page_object.homePage.majors_element.click
    when "occupations"
      @page_object.homePage.occupations_element.click
    else
      fail "Please define #{selected_stem} in your code"
    end
    result = true
  rescue Exception => e
      result = false
    end
  expect(result).to eq(true), "the #{section} favorites should be click-able"
end

When(/^the user select favorites "([^"]*)"$/) do |section|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)
  case section.downcase.strip
  when "schools"
    @page_object.homePage.schools_element.click
  when "majors"
    @page_object.homePage.majors_element.click
  when "occupations"
    @page_object.homePage.occupations_element.click
  else
    fail "Please define #{selected_stem} in your code"
  end
end

Then(/^the system display "([^"]*)" under Schools$/) do |message|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)

  result = @page_object.homePage.listGroup_element.text
  result = result.split("\n")
  result_final = result[0] + " " + result[1]
  expect(message).to eq(result_final)
end

When(/^the user select "([^"]*)" button under Schools$/) do |arg1|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)

  @page_object.homePage.searchBut_element.click
end

Then(/^the system navigate the user to Search "([^"]*)" page$/) do |name|
  WaitUtility.wait_untill_elements_size_steadied
  
  url_name =  browser_page_url = BROWSER.url.split('?')[0]
  
  fail "The user should be navigate to #{name} page" unless url_name.downcase.include? name.downcase
end

Then(/^the system display "([^"]*)" under Majors$/) do |message|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)

  result = @page_object.homePage.listGroup_element.text
  result = result.split("\n")
  result_final = result[0] + " " + result[1]
  expect(message).to eq(result_final)
end

When(/^the user select "([^"]*)" button under Majors$/) do |arg1|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)

  @page_object.homePage.searchBut_element.click
end

Then(/^the system display "([^"]*)" under Occupations$/) do |message|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)

  result = @page_object.homePage.listGroup_element.text
  result = result.split("\n")
  result_final = result[0] + " " + result[1]
  expect(message).to eq(result_final)
end

When(/^the user select "([^"]*)" button under Occupations$/) do |arg1|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)

  @page_object.homePage.searchBut_element.click
end

Then(/^the Start Now button should be disable$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)

  begin
      @page_object.homePage.startNow_element.click
      result = false
    rescue Exception => e
      result = true
    end
    expect(result).to eq(true), "The user did not login the Start Now button should be disabled"
end

Then(/^the system will display some Highlights$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)

  result = @page_object.homePage.newsHeading_element.text
  fail "The system should display some Highlights but it did not." if result.empty?
end

Then(/^the system will display "([^"]*)" link$/) do |message|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)

  result = @page_object.homePage.readMore_element.text
  expect(message).to eq(result)
end

Given(/^the user A register and login$/) do |table|
  table_hash = {}
  table.rows.each do |key, value|
     table_hash[key] = value
  end
  @table = table_hash

  @page_object.loginPage.email_element.when_visible(TIME_OUT_LIMIT)

  @page_object.loginPage.email = table_hash["Email address"]
  @page_object.loginPage.password = table_hash["Password"]

  @page_object.loginPage.login_element.click
  WaitUtility.waitWhileSpinnerPresent(45)

  if @page_object.loginPage.loginError_element.visible?
    @page_object.loginPage.signUp_element.click

    @page_object.signUpPage.firstName_element.when_visible(TIME_OUT_LIMIT)
    WaitUtility.wait_untill_elements_size_steadied

    @page_object.signUpPage.firstName = table_hash["First name"]
    @page_object.signUpPage.lastName = table_hash["Last name"]
    @page_object.signUpPage.email = table_hash["Email address"]

    @page_object.signUpPage.birthMonth = table_hash["Birth Month"]
    @page_object.signUpPage.birthDay = table_hash["Birth Day"]
    @page_object.signUpPage.birthYear = table_hash["Birth Year"]

    @page_object.signUpPage.password = table_hash["Password"]
    @page_object.signUpPage.confirmPassword = table_hash["Confirm Password"]

    @page_object.signUpPage.tosCheckBox_element.click if table_hash["TOS CheckBox"].upcase == "TRUE"

    @page_object.signUpPage.signUp_element.click
  end
  WaitUtility.wait_untill_elements_size_steadied
  # @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)
end

When(/^the user click (\d+) times on favorite button$/) do |times|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)
  @old_title_text = []
  for i in 1..times.to_i
    card_title_text = @page_object.homePage.cardTitle_element.text
    @old_title_text = @old_title_text + [card_title_text] unless card_title_text.empty?
  
    @page_object.homePage.favoriteBut_element.click
  end
end

Then(/^the system display it under favorite Schools, Majors or occupations$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)

  @page_object.homePage.listGroup_element.when_visible(TIME_OUT_LIMIT)
  result1 = @page_object.homePage.listGroup_element.text
  if result1.include? "You haven’t added any favorites yet"
    result1 =""
  else
    result1 = result1.split("\n")
  end
 
  @page_object.homePage.majorsA_element.click
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  @page_object.homePage.listGroup_element.when_visible(TIME_OUT_LIMIT)
  result2 = @page_object.homePage.listGroup_element.text
  if result2.include? "You haven’t added any favorites yet"
    result2 =""
  else
    result2 = result2.split("\n")
  end
   
  @page_object.homePage.occupationsA_element.click
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  @page_object.homePage.listGroup_element.when_visible(TIME_OUT_LIMIT)
  result3 = @page_object.homePage.listGroup_element.text
  if result3.include? "You haven’t added any favorites yet"
    result3 =""
  else
    result3 = result3.split("\n")
  end

  results = result1 + result2 + result3
  
  expect(results - @old_title_text).to eq(@old_title_text - results)
end

When(/^the user select favorite from top right corner$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)
  
  @page_object.homePage.favoriteStarMenu_element.click
end

When(/^user should be able to clear the favorite Schools, Majors and \/ or occupations$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.homePage.favorites_element.when_visible(TIME_OUT_LIMIT)
  favorite_exist = true
  
  while favorite_exist
    if @page_object.homePage.favoriteStarTable_element.visible?
      @page_object.homePage.favoriteStarTable_element.click
      WaitUtility.wait_untill_elements_size_steadied
    else
      favorite_exist = false
    end
  end

  @page_object.homePage.majorsMenu_element.click
  WaitUtility.wait_untill_elements_size_steadied
  favorite_exist = true
  
  while favorite_exist
    if @page_object.homePage.favoriteStarTable_element.visible?
      @page_object.homePage.favoriteStarTable_element.click
      WaitUtility.wait_untill_elements_size_steadied
    else
      favorite_exist = false
    end
  end

  @page_object.homePage.occupationsMenu_element.click
  WaitUtility.wait_untill_elements_size_steadied
  favorite_exist = true
  
  while favorite_exist
    if @page_object.homePage.favoriteStarTable_element.visible?
      @page_object.homePage.favoriteStarTable_element.click
      WaitUtility.wait_untill_elements_size_steadied
    else
      favorite_exist = false
    end
  end

  @page_object.homePage.favoriteStarMenu_element.click

end







