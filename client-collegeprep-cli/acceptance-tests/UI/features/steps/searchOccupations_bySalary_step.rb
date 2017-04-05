When(/^the user search for "([^"]*)" minimum salary$/) do |salary|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  @page_object.searchOccupationsPage.salary = salary
  BROWSER.send_keys :return
  WaitUtility.wait_untill_elements_size_steadied
end

Then(/^the salary filter would be displayed "([^"]*)"$/) do |salary|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  expect(@page_object.searchRelated.firstSelected_element.text).to eq(salary)
end

When(/^the user select the salary reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchOccupationsPage.salaryReset_element.click
  @page_object.searchRelated.resetEles_elements[0].click
end

Then(/^the salary text box should be cleared$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  expect(@page_object.searchOccupationsPage.salary).to eq("")
end

Then(/^the result will only show jobs that offers at least "([^"]*)"$/) do |salary|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.whole_colmun_eq_greater_tuition(table, "Average Salary", salary)

  fail "Expected: #{salary} should be equal or more than\nGot:\n#{result} " unless result.empty?

end

When(/^the user search for an occupation by "([^"]*)"$/) do |search_name|
  search_by_occupation(search_name)
end

Then(/^the result will only show occupation\(s\) that offers at least "([^"]*)" by "([^"]*)"$/) do |salary, search_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.whole_colmun_eq_greater_tuition(table, "Average Salary", salary)

  fail "Expected: #{salary} should be equal or more than\nGot:\n#{result} " unless result.empty?

  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, search_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{search_name} display under occupation name column.\n result(s): \n #{body}"
  end
end

Then(/^the system will display the below major occupation for the selected salary$/) do |table|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  expected_result = []

  test_support = TestSupport.new
  actual_result = test_support.get_values_of_2col_for_pages(1,5)

  table.rows.each do |occupation, salary|
    salary = "$" + salary.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
    expected_result = expected_result + [occupation + ";" + salary]
  end

  expected = expected_result - actual_result
  actual = actual_result - expected_result

  error_msg1 = "Expected: #{expected_result}\n\nGot: #{actual_result} \n\n"
  error_msg2 = "It was looking for: \n#{expected.sort} \nfound:\n#{actual.sort} "
  fail error_msg1 + error_msg2 unless expected.empty? && actual.empty?
end


def search_by_occupation(search_name)
    unless search_name ==""
      WaitUtility.wait_untill_elements_size_steadied
      @page_object.searchRelated.searchBox =""
      @page_object.searchRelated.searchBox = search_name

      WaitUtility.wait_untill_elements_size_steadied
      @page_object.searchRelated.search_element.click
      WaitUtility.wait_untill_elements_size_steadied
    end
  end
