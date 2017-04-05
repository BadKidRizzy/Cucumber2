Then(/^the user select city$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_mission = "city"

  #@page_object.searchSchoolsPage.campusReset_element.click
  @page_object.searchRelated.resetEles_elements[5].click
  @page_object.searchSchoolsPage.city_element.click
end

Then(/^the user select suburban$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_award = "suburban"
  WaitUtility.wait_untill_elements_size_steadied
  
  #@page_object.searchSchoolsPage.campusReset_element.click
  @page_object.searchRelated.resetEles_elements[5].click
  @page_object.searchSchoolsPage.suburban_element.click
end

Then(/^the user select town$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_award = "town"

  #@page_object.searchSchoolsPage.campusReset_element.click
  @page_object.searchRelated.resetEles_elements[5].click
  @page_object.searchSchoolsPage.town_element.click
end

Then(/^the user select rural$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_award = "rural"

  #@page_object.searchSchoolsPage.campusReset_element.click
  @page_object.searchRelated.resetEles_elements[5].click
  @page_object.searchSchoolsPage.rural_element.click
end

When(/^the user select the campus setting reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  #@page_object.searchSchoolsPage.campusReset_element.click
  @page_object.searchRelated.resetEles_elements[5].click
end

# selected -------------------
Then(/^the city filter be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be checked."

  expect(@page_object.searchSchoolsPage.city_checked?).to be(true), "The city #{error_msg}"
end

Then(/^the suburban filter be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be checked."

  expect(@page_object.searchSchoolsPage.suburban_checked?).to be(true), "The suburban #{error_msg}"
end

Then(/^the town filter be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be checked."

  expect(@page_object.searchSchoolsPage.town_checked?).to be(true), "The town #{error_msg}"
end

Then(/^the rural filter be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be checked."

  expect(@page_object.searchSchoolsPage.rural_checked?).to be(true), "The rural #{error_msg}"
end

Then(/^the city, suburban, town, and rural filter should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."
  
  expect(@page_object.searchSchoolsPage.city_checked?).to be(false), "The city #{error_msg}"
  expect(@page_object.searchSchoolsPage.suburban_checked?).to be(false), "The suburban #{error_msg}"
  expect(@page_object.searchSchoolsPage.town_checked?).to be(false), "The town #{error_msg}"
  expect(@page_object.searchSchoolsPage.rural_checked?).to be(false), "The rural #{error_msg}"
end

Then(/^the city filter should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."
  
  expect(@page_object.searchSchoolsPage.city_checked?).to be(false), "The city #{error_msg}"
end

Then(/^the suburban filter should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."
  
  expect(@page_object.searchSchoolsPage.suburban_checked?).to be(false), "The suburban #{error_msg}"
end

Then(/^the town filter should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."
  
  expect(@page_object.searchSchoolsPage.town_checked?).to be(false), "The town #{error_msg}"
end

Then(/^the rural filter should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."
  
  expect(@page_object.searchSchoolsPage.rural_checked?).to be(false), "The rural #{error_msg}"
end

# display --------------------------------------------------
Then(/^the result will only show school\(s\) in the city by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} in the city. The system should display it.\n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) in the suburb by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} in the suburb. The system should display it. \n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) in the town by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} in the town. The system should display it. \n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) in the rural by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} in the rural. The system should display it. \n result(s): \n #{body}"
  end
end

# will not ---------------------
Then(/^the result will not show school\(s\) in the city by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  check_name_not_found_results(result_name)
end

Then(/^the result will not show school\(s\) in the suburban by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  check_name_not_found_results(result_name)
end

Then(/^the result will not show school\(s\) in the town by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  check_name_not_found_results(result_name)
end

Then(/^the result will not show school\(s\) in the rural by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  check_name_not_found_results(result_name)
end
#------------------
