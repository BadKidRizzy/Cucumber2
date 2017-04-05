Then(/^the user select small$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.sizeReset_element.click
  @page_object.searchRelated.resetEles_elements[2].click
  @page_object.searchSchoolsPage.small_element.click
end

Then(/^the user select medium$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.sizeReset_element.click
  @page_object.searchRelated.resetEles_elements[2].click
  @page_object.searchSchoolsPage.medium_element.click
end

Then(/^the user select large$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.sizeReset_element.click
  @page_object.searchRelated.resetEles_elements[2].click
  @page_object.searchSchoolsPage.large_element.click
end

Then(/^the user select small and medium$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.sizeReset_element.click
  @page_object.searchRelated.resetEles_elements[2].click
  @page_object.searchSchoolsPage.small_element.click
  @page_object.searchSchoolsPage.medium_element.click
end

Then(/^the user select small and large$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.sizeReset_element.click
  @page_object.searchRelated.resetEles_elements[2].click
  @page_object.searchSchoolsPage.small_element.click
  @page_object.searchSchoolsPage.large_element.click
end

Then(/^the user select medium and large$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.sizeReset_element.click
  @page_object.searchRelated.resetEles_elements[2].click
  @page_object.searchSchoolsPage.medium_element.click
  @page_object.searchSchoolsPage.large_element.click
end

Then(/^the user select small, medium and large$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.sizeReset_element.click
  @page_object.searchRelated.resetEles_elements[2].click
  @page_object.searchSchoolsPage.small_element.click
  @page_object.searchSchoolsPage.medium_element.click
  @page_object.searchSchoolsPage.large_element.click
end

Then(/^the small filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  expect(@page_object.searchSchoolsPage.small_checked?).to be true
end

Then(/^the medium filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  expect(@page_object.searchSchoolsPage.medium_checked?).to be true
end

Then(/^the large filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  expect(@page_object.searchSchoolsPage.large_checked?).to be true
end

Then(/^the small, medium, and large filter should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  expect(@page_object.searchSchoolsPage.small_checked?).to be false
  expect(@page_object.searchSchoolsPage.medium_checked?).to be false
  expect(@page_object.searchSchoolsPage.large_checked?).to be false
end

When(/^the user select the school size reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.sizeReset_element.click
  @page_object.searchRelated.resetEles_elements[2].click
end

Then(/^the result will only show small school\(s\) by "([^"]*)"$/) do |result_name|
  @school_name = result_name
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} \n Got: No result matched or found \n result(s): \n #{body}"
  end
end

Then(/^the result will only show medium school\(s\) by "([^"]*)"$/) do |result_name|
  @school_name = result_name
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} \n Got: No result matched or found \n result(s): \n #{body}"
  end
end

Then(/^the result will only show large school\(s\) by "([^"]*)"$/) do |result_name|
  @school_name = result_name
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} \n Got: No result matched or found \n result(s): \n #{body}"
  end
end

Then(/^the result will only show small and medium school\(s\) by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} \n Got: No result matched or found \n result(s): \n #{body}"
  end
end

Then(/^the result will only show small and large school\(s\) by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} \n Got: No result matched or found \n result(s): \n #{body}"
  end
end

Then(/^the result will only show medium and large school\(s\) by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} \n Got: No result matched or found \n result(s): \n #{body}"
  end
end

Then(/^the result will only show small, medium and large school\(s\) by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} \n Got: No result matched or found \n result(s): \n #{body}"
  end
end

Then(/^the result will not show small school\(s\) by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  check_name_not_found_results(result_name)
end

Then(/^the result will not show medium school\(s\) by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  check_name_not_found_results(result_name)
end

Then(/^the result will not show large school\(s\) by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  check_name_not_found_results(result_name)
end

Then(/^the result will not show small and medium school\(s\) by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  check_name_not_found_results(result_name)
end

Then(/^the result will not show small and large school\(s\) by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  check_name_not_found_results(result_name)
end

Then(/^the result will not show medium and large school\(s\) by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  check_name_not_found_results(result_name)
end

Then(/^the undergrads should be less than "([^"]*)"$/) do |small|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.getTextForMatchNameCol(table, 5, @school_name)
  result = result.gsub(',', '').to_i
  small = small.gsub(',', '').to_i
  
  unless result <= small
    fail "Got: #{result} \n Expected: to be less than #{small}"
  end
end

Then(/^the undergrads should be between "([^"]*)" to "([^"]*)"$/) do |small, medium|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.getTextForMatchNameCol(table, 5, @school_name)
  
  result = result.gsub(',', '').to_i
  small = small.gsub(',', '').to_i
  medium = medium.gsub(',', '').to_i

  unless (result > small) && (result <= medium)
    fail "Got: #{result} \n Expected: to be greater the #{small} and less than #{medium} "
  end
end

Then(/^the undergrads should be greater than "([^"]*)"$/) do |large|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  table = @page_object.searchSchoolsPage.searchResults_element
  
  result = TableUtiity.getTextForMatchNameCol(table, 5, @school_name)
  result = result.gsub(',', '').to_i
  large = large.gsub(',', '').to_i
  
  unless result > large
    fail "Got: #{result} \n Expected: to be greater than #{large}"
  end
end

