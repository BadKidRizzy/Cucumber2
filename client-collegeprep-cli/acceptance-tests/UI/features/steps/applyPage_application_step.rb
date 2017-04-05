When(/^the user select View Application$/) do
  WaitUtility.wait_untill_elements_size_steadied
  begin
    @page_object.applyPage.titleApplication
  rescue Exception => e
    @page_object.applyPage.viewApplication_element.when_visible(TIME_OUT_LIMIT).click
  end
end

When(/^the user click on "([^"]*)" link at Application page$/) do |link_name|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  case link_name.downcase.strip
    when "personal"
      @page_object.applyPage.personal_element.when_visible(TIME_OUT_LIMIT).click 
    when "address"
      @page_object.applyPage.address_element.when_visible(TIME_OUT_LIMIT).click 
    when "contact"
      @page_object.applyPage.contact_element.when_visible(TIME_OUT_LIMIT).click 
    when "education"
      @page_object.applyPage.education_element.when_visible(TIME_OUT_LIMIT).click 
    when "tests"
      @page_object.applyPage.tests_element.when_visible(TIME_OUT_LIMIT).click 
    when "other activities"
      @page_object.applyPage.otherActivities_element.when_visible(TIME_OUT_LIMIT).click 
    when "writing & media"
      @page_object.applyPage.writingMedia_element.when_visible(TIME_OUT_LIMIT).click 
    else
      fail "Please define #{selected_stem} in your code"
    end
end

When(/^the user click on Next button at Application page$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  @page_object.applyPage.nextPage_element.when_visible(TIME_OUT_LIMIT).click 
end

Then(/^the Previous button will be visible$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  expect(@page_object.applyPage.previousPage_element.visible?).to eq(true), "The Previous button expected to be visible"
end

Then(/^the Previous button will be invisible$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  expect(@page_object.applyPage.previousPage_element.visible?).to eq(false), "The Previous button expected to be invisible"
end

Then(/^the Next button will be invisible$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  expect(@page_object.applyPage.nextPage_element.visible?).to eq(false), "The Next button expected to be invisible"
end


#---------------- display

Then(/^the system will display below information under Application section$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  
  expect_data = []
  expect_data = table.rows.map{|x, y| x.strip}

  application_content = @page_object.applyPage.leftApplicationContent_element.text
  application_content = application_content.split("\n")
  application_content = application_content.map{|x| x.strip}

  expect_results = expect_data - application_content
  got_results = application_content - expect_data
  
  expect(got_results).to eq(expect_results), "expected: #{expect_data}\n     got:#{application_content}\n   diff:\n#{expect_results}\n#{got_results}"
end

Then(/^the user first and last name and also date of birth will display on personal section$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.firstName_element.when_visible(TIME_OUT_LIMIT)
 
  expect(@page_object.applyPage.firstName).to eq @table_hash["First name"]
  expect(@page_object.applyPage.lastName).to eq @table_hash["Last name"]

  month = get_month(@table_hash["Birth Month"])
  date = month + '/' + @table_hash["Birth Day"] +'/' + @table_hash["Birth Year"]
  expect(@page_object.applyPage.dateBirth).to eq date
end

Then(/^the "([^"]*)" page will display$/) do |page_name|
  WaitUtility.wait_untill_elements_size_steadied

  actual_name = @page_object.applyPage.pageName_element.when_visible(TIME_OUT_LIMIT).text
  expect(actual_name).to eq(page_name)
end

Then(/^the system will display asterisk for required fields$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  fail "Write code for required fields!!!"
end

def get_month(date_text)
  case date_text.downcase
    when "january"
      date = '01'
    when "february"
      date = '02'
    when "march"
      date = '03'
    when "april"
      date = '04'
    when "may"
      date = '05'
    when "june"
      date = '06'
    when "july"
      date = '07'
    when "august"
      date = '08'
    when "september"
      date = '09'
    when "october"
      date = '10'
    when "november"
      date = '11'
    when "december"
      date = '12'
    end
return date
end



