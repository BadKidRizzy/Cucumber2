Then(/^the user select HBCU$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_mission = "HBCU"

  # @page_object.searchSchoolsPage.missionReset_element.click
  @page_object.searchRelated.resetEles_elements[6].click
  @page_object.searchSchoolsPage.hbcu_element.click
end

Then(/^the user select Hispanic\-serving$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_award = "hispanic-serving"

  # @page_object.searchSchoolsPage.missionReset_element.click
  @page_object.searchRelated.resetEles_elements[6].click
  @page_object.searchSchoolsPage.hispanic_element.click
end

Then(/^the user select tribal$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_award = "tribal"

  # @page_object.searchSchoolsPage.missionReset_element.click
  @page_object.searchRelated.resetEles_elements[6].click
  @page_object.searchSchoolsPage.tribal_element.click
end

Then(/^the user select religious affiliation$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_award = "religious affiliation"

  # @page_object.searchSchoolsPage.missionReset_element.click
  @page_object.searchRelated.resetEles_elements[6].click
  @page_object.searchSchoolsPage.religious_element.click
end

Then(/^the user select male$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_award = "male"

  # @page_object.searchSchoolsPage.missionReset_element.click
  @page_object.searchRelated.resetEles_elements[6].click
  @page_object.searchSchoolsPage.male_element.click
end

Then(/^the user select female$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_award = "female "

  # @page_object.searchSchoolsPage.missionReset_element.click
  @page_object.searchRelated.resetEles_elements[6].click
  @page_object.searchSchoolsPage.female_element.click
end

When(/^the user select the special mission reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.missionReset_element.click
  @page_object.searchRelated.resetEles_elements[6].click
end

When(/^the user click on x$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  @page_object.searchRelated.firstSelected_element.when_visible(TIME_OUT_LIMIT).click
end

# with other ----------------
Then(/^the user select HBCU with other filter$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_mission = "HBCU"

  @page_object.searchSchoolsPage.hbcu_element.click
end

Then(/^the user select Hispanic\-serving with other filter$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_award = "hispanic-serving"

  @page_object.searchSchoolsPage.hispanic_element.click
end

Then(/^the user select tribal with other filter$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_award = "tribal"

  @page_object.searchSchoolsPage.tribal_element.click
end

Then(/^the user select religious affiliation with other filter$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_award = "religious affiliation"

  @page_object.searchSchoolsPage.religious_element.click
end

Then(/^the user select male with other filter$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_award = "male"

  @page_object.searchSchoolsPage.male_element.click
end

Then(/^the user select female with other filter$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_award = "female "

  @page_object.searchSchoolsPage.female_element.click
end

# selected -------------------
Then(/^the HBCU filter be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be checked."

  expect(@page_object.searchSchoolsPage.hbcu_checked?).to be(true), "The HBCU #{error_msg}"
end

Then(/^the Hispanic\-serving filter be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be checked."

  expect(@page_object.searchSchoolsPage.hispanic_checked?).to be(true), "The hispanic-serving #{error_msg}"
end

Then(/^the tribal filter be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be checked."

  expect(@page_object.searchSchoolsPage.tribal_checked?).to be(true), "The tribal #{error_msg}"
end

Then(/^the religious affiliation filter be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be checked."

  expect(@page_object.searchSchoolsPage.religious_checked?).to be(true), "The religious affiliation #{error_msg}"
end

Then(/^the male filter be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be checked."

  expect(@page_object.searchSchoolsPage.male_checked?).to be(true), "The male #{error_msg}"
end

Then(/^the female filter be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be checked."

  expect(@page_object.searchSchoolsPage.female_checked?).to be(true), "The female #{error_msg}"
end


Then(/^the HBCU, Hispanic\-serving, tribal, religious affiliation, male, and female filter should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."
  
  expect(@page_object.searchSchoolsPage.hbcu_checked?).to be(false), "The HBCU #{error_msg}"
  expect(@page_object.searchSchoolsPage.hispanic_checked?).to be(false), "The hispanic-serving #{error_msg}"
  expect(@page_object.searchSchoolsPage.tribal_checked?).to be(false), "The tribal #{error_msg}"
  expect(@page_object.searchSchoolsPage.religious_checked?).to be(false), "The religious affiliation #{error_msg}"
  expect(@page_object.searchSchoolsPage.male_checked?).to be(false), "The male #{error_msg}"
  expect(@page_object.searchSchoolsPage.female_checked?).to be(false), "The female #{error_msg}"
end

Then(/^the HBCU filter should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."
  
  expect(@page_object.searchSchoolsPage.hbcu_checked?).to be(false), "The HBCU #{error_msg}"
end

Then(/^the Hispanic\-serving filter should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."
  
  expect(@page_object.searchSchoolsPage.hispanic_checked?).to be(false), "The hispanic-serving #{error_msg}"
end

Then(/^the tribal filter should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."
  
  expect(@page_object.searchSchoolsPage.tribal_checked?).to be(false), "The tribal #{error_msg}"
end

Then(/^the religious affiliation filter should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."
  
  expect(@page_object.searchSchoolsPage.religious_checked?).to be(false), "The religious affiliation #{error_msg}"
end

Then(/^the male filter should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."
  
  expect(@page_object.searchSchoolsPage.male_checked?).to be(false), "The male #{error_msg}"
end

Then(/^the female filter should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."
  
  expect(@page_object.searchSchoolsPage.female_checked?).to be(false), "The female #{error_msg}"
end

Then(/^the user select the mission reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  @page_object.searchSchoolsPage.awardReset_element.click
end
# display --------------------------------------------------
Then(/^the result will only show school\(s\) with HBCU mission by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers HBCU mission. The system should display it.\n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) with Hispanic\-serving mission by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers hispanic-serving mission. The system should display it. \n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) with tribal mission by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers tribal mission. The system should display it. \n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) with religious affiliation mission by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers religious affiliation mission. The system should display it. \n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) with male mission by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers male mission. The system should display it. \n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) with female mission by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers female mission. The system should display it. \n result(s): \n #{body}"
  end
end
# will not ---------------------
Then(/^the result will not show school\(s\) with male mission by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  check_name_not_found_results(result_name)
end

Then(/^the result will not show school\(s\) with female mission by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  check_name_not_found_results(result_name)
end
#------------------


