Then(/^the job category drop\-down would be displayed$/) do |expected_result|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied

  expected_result = expected_result.strip.split("\n")
  actual_result = @page_object.searchJobsPage.categories_options
 
  error_msg1 = "Expected: #{expected_result}\nGot: #{actual_result} \n
    The system did not display but found in the feature file: #{expected_result - actual_result}"
  error_msg2 = "Expected: #{expected_result}\nGot: #{actual_result} \n
    The system displayed but did not find in the feature file:: #{actual_result - expected_result}"
  
  expect((expected_result - actual_result).empty?).to be(true), error_msg1
  expect((actual_result - expected_result).empty?).to be(true), error_msg2
end

When(/^the user select "([^"]*)" from job category drop\-down$/) do |category|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  # @page_object.searchJobsPage.categoryReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click

  WaitUtility.waitUntillTableSteadied
  @page_object.searchJobsPage.categories = category
end

Then(/^the system display selected job category "([^"]*)" on top left under search box$/) do |expected_result|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied

  expect(@page_object.searchRelated.firstSelected_element.visible?).to be(true), "The #{expected_result} did not displayed."
  
  result = @page_object.searchRelated.firstSelected_element.text 
  expect(result.upcase).to eq(expected_result.upcase), "Expected: #{expected_result} \nGot: #{result}"
end

Then(/^the job category drop\-down would displayed "([^"]*)" at the beginning or end of the selection$/) do |expected_result|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied

  expected_result = expected_result.strip.upcase
  actual_result = @page_object.searchJobsPage.categories_options
  l = actual_result.size
  
  error_msg1 = "Expected: #{expected_result} be at the beginning or end of the selection\n Got: #{actual_result[1]} and #{actual_result[l-1]}"
  fail error_msg1 unless (actual_result[1].upcase == expected_result || actual_result[l-1].upcase == expected_result)
end

Then(/^the result will show Job\(s\) within the job "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |expected_result, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  
  test_support = DetailPageSupport.new
  actual_results = test_support.compare_industry_in_detail_pages(expected_result ,page_num)
end

Then(/^the system will display the "([^"]*)" within the job "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |expected_job, expected_category, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  
  test_support = DetailPageSupport.new
  actual_results = test_support.compare_jobName_and_industry_in_detail_pages(expected_job, expected_category, page_num)
end

When(/^the user select the job category reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied

  # @page_object.searchJobsPage.categoryReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click
end

Then(/^the job category filters should be unselected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied

  career_check_boxs = BROWSER.inputs(:id => /JN/)
  
  expect(career_check_boxs.size).to eq(0), "All job category filters should be unselected"
end




