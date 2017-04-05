Then(/^the system will display the below major occupation for the selected salary and career cluster$/) do |table|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  expected_result = []

  test_support = TestSupport.new
  actual_result = test_support.get_values_col_for_pages(1)
  
  table.rows.each do |occupation, i|
    expected_result = expected_result + [occupation]
  end

  expected = expected_result - actual_result
  actual = actual_result - expected_result

  error_msg1 = "Expected: #{expected_result}\n\nGot: #{actual_result} \n\n"
  error_msg2 = "It was looking for: \n#{expected.sort} \nfound:\n#{actual.sort} "
  fail error_msg1 + error_msg2 unless expected.empty? && actual.empty?
end

Then(/^the system will display the below major occupation for the selected salary and preparation needed$/) do |table|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  expected_result = []

  test_support = TestSupport.new
  actual_result = test_support.get_values_col_for_pages(1)
  
  table.rows.each do |occupation, i|
    expected_result = expected_result + [occupation]
  end

  expected = expected_result - actual_result
  actual = actual_result - expected_result

  error_msg1 = "Expected: #{expected_result}\n\nGot: #{actual_result} \n\n"
  error_msg2 = "It was looking for: \n#{expected.sort} \nfound:\n#{actual.sort} "
  fail error_msg1 + error_msg2 unless expected.empty? && actual.empty?
end

Then(/^the system will display the below major occupation for the selected salary and outlook$/) do |table|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  expected_result = []

  test_support = TestSupport.new
  actual_result = test_support.get_values_col_for_pages(1)
  
  table.rows.each do |occupation, i|
    expected_result = expected_result + [occupation]
  end

  expected = expected_result - actual_result
  actual = actual_result - expected_result

  error_msg1 = "Expected: #{expected_result}\n\nGot: #{actual_result} \n\n"
  error_msg2 = "It was looking for: \n#{expected.sort} \nfound:\n#{actual.sort} "
  fail error_msg1 + error_msg2 unless expected.empty? && actual.empty?
end

Then(/^the system will display the below occupation for the selected salary and career cluster$/) do |table|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  expected_result = []

  test_support = TestSupport.new
  actual_result = test_support.get_values_col_for_pages(1)
  
  table.rows.each do |occupation, i|
    expected_result = expected_result + [occupation]
  end

  expected = expected_result - actual_result
  actual = actual_result - expected_result

  error_msg1 = "Expected: #{expected_result}\n\nGot: #{actual_result} \n\n"
  error_msg2 = "It was looking for: \n#{expected.sort} \nfound:\n#{actual.sort} "
  fail error_msg1 + error_msg2 unless expected.empty? && actual.empty?
end

Then(/^the system will display the below occupation for the selected salary and preparation needed$/) do |table|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  expected_result = []

  test_support = TestSupport.new
  actual_result = test_support.get_values_col_for_pages(1)
  
  table.rows.each do |occupation, i|
    expected_result = expected_result + [occupation]
  end

  expected = expected_result - actual_result
  actual = actual_result - expected_result

  error_msg1 = "Expected: #{expected_result}\n\nGot: #{actual_result} \n\n"
  error_msg2 = "It was looking for: \n#{expected.sort} \nfound:\n#{actual.sort} "
  fail error_msg1 + error_msg2 unless expected.empty? && actual.empty?
end

Then(/^the system will display the below occupation for the selected salary and outlook$/) do |table|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  expected_result = []

  test_support = TestSupport.new
  actual_result = test_support.get_values_col_for_pages(1)
  
  table.rows.each do |occupation, i|
    expected_result = expected_result + [occupation]
  end

  expected = expected_result - actual_result
  actual = actual_result - expected_result

  error_msg1 = "Expected: #{expected_result}\n\nGot: #{actual_result} \n\n"
  error_msg2 = "It was looking for: \n#{expected.sort} \nfound:\n#{actual.sort} "
  fail error_msg1 + error_msg2 unless expected.empty? && actual.empty?
end

Then(/^the system will display the below occupation for the selected filters$/) do |table|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  expected_result = []

  test_support = TestSupport.new
  actual_result = test_support.get_values_col_for_pages(1)
  
  table.rows.each do |occupation, i|
    expected_result = expected_result + [occupation]
  end

  expected = expected_result - actual_result
  actual = actual_result - expected_result

  error_msg1 = "Expected: #{expected_result}\n\nGot: #{actual_result} \n\n"
  error_msg2 = "It was looking for: \n#{expected.sort} \nfound:\n#{actual.sort} "
  fail error_msg1 + error_msg2 unless expected.empty? && actual.empty?
end

Then(/^the result will display the "([^"]*)" for the selected filters$/) do |expected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table_element = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table_element, 1, expected_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: The system should display #{expected_name} for selected outlook. \n result(s): \n #{body}"
  end
end


