When(/^the user select "([^"]*)" from career cluster$/) do |selected_options|
  @page_object.searchOccupationsPage.careerDrop = selected_options
end

Then(/^the "([^"]*)" filter would be selected from career cluster$/) do |id|
  # @page_object.searchOccupationsPage.career_check_box(id)
  career_check_box = BROWSER.element(:id => id)

  expect(career_check_box.attribute_value 'checked').to eq "true"
end

When(/^the user select the career cluster reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchOccupationsPage.careerReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click
end

Then(/^the career cluster should be cleared$/) do
  expect(@page_object.searchOccupationsPage.careerDrop).to eq ("- select one or more -")
end

#display -------------------
Then(/^the Career Cluster drop\-down would be displayed$/) do |expected_result|
  expected_result = expected_result.strip.split("\n")
  actual_result = @page_object.searchOccupationsPage.careerDrop_options

  error_msg1 = "Expected: #{expected_result}\nGot: #{actual_result} \n
    The drop down list does not have but the feature file does: #{expected_result - actual_result}"
  error_msg2 = "Expected: #{expected_result}\nGot: #{actual_result} \n
    The drop down list has but the feature file does not: #{actual_result - expected_result}"
  
  expect((expected_result - actual_result).empty?).to be(true), error_msg1
  expect((actual_result - expected_result).empty?).to be(true), error_msg2
end

Then(/^the system will display the below occupations name for the selected career cluster$/) do |expected_result|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  expected_result = expected_result.split("\n").map(&:strip)

  test_support = TestSupport.new
  actual_result = test_support.get_values_col_for_pages(1)

  actual = actual_result - expected_result
  expected = expected_result - actual_result


  error_msg1 = "Expected: #{expected_result}\n\nGot: #{actual_result} \n\n"
  error_msg2 = "It was looking for: \n#{expected.sort} \nfound:\n#{actual.sort} "
  fail error_msg1 + error_msg2 unless expected.empty? && actual.empty?
end

Then(/^the system will display the "([^"]*)" for the selected career cluster$/) do |expected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table_element = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table_element, 1, expected_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: The system should display #{expected_name} for selected career cluster. \n result(s): \n #{body}"
  end
end

Then(/^the system will not display the "([^"]*)" for the selected career cluster$/) do |expected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, expected_name)
  
  if result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: The system should not display #{expected_name} for selected career cluster.\n result(s): \n #{body}"
  end
end

When(/^click on x to close it$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  @page_object.searchRelated.firstSelected_element.click
end

Then(/^the "([^"]*)" should be selected$/) do |expected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  result = @page_object.searchRelated.firstSelected_element.text
  expect(result.include? expected_name).to eq(true), "Expected: #{expected_name}\nGot: #{result} "
end

 
