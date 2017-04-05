When(/^the user search for "([^"]*)" minimum salary in job search$/) do |salary|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  @page_object.searchJobsPage.salary = salary
  BROWSER.send_keys :return
end

When(/^the user change the minimum salary to "([^"]*)" in job search$/) do |salary|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  @page_object.searchJobsPage.salary = salary
  BROWSER.send_keys :return
end

Then(/^the salary filter would be displayed "([^"]*)" in job search$/) do |salary|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  expect(@page_object.searchRelated.firstSelected_element.text).to eq(salary)
end

When(/^the user select the salary reset button in job search$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchJobsPage.salaryReset_element.click
  @page_object.searchRelated.resetEles_elements[0].click
end

Then(/^the salary text box should be cleared in job search$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
 
  expect(@page_object.searchJobsPage.salary).to eq("")
end

Then(/^the result will only show jobs that offers at least "([^"]*)" in job search \- check for "([^"]*)" page\(s\)$/) do |salary, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  line_num = 0
  table = TestSupport.new
  results = table.get_values_col_for_pages("Pay", page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    result =result.downcase
    result = result.gsub("$", "").gsub("/year", "")
    result = result.gsub("k", "000").gsub(",","")
    if result.include? "-"
      result = result.split("-")
      fail "At line number #{line_num}\nExpected: #{salary}\n within\nGot: #{result}" unless salary.to_i <= result[1].to_i
    else
      fail "At line number #{line_num}\nExpected: #{salary}\nless or equal to\nGot: #{result}" unless salary.to_i <= result.to_i
    end
  end

end

When(/^the user search for a job by "([^"]*)"$/) do |search_name|
  search_by_job(search_name)
end

Then(/^the result will display "([^"]*)" that offers at least "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |expected_job, salary, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  line_num = 0

  test_support = TestSupport.new
  actual_results = test_support.get_values_of_2col_for_pages("Job Name", "Pay", page_num)
  p "***** Wait .... Checking the results ****"

  actual_results.each do |actual_result|
    actual_result = actual_result.split(";")
    actual_job = actual_result[0]
    actual_salary = actual_result[1]
    line_num +=1
    fail "At line number #{line_num}\nExpected: #{expected_job}\n Got: #{actual_job}" unless actual_job.upcase.include? expected_job.upcase
    
    actual_pay =actual_salary.downcase
    actual_pay = actual_pay.gsub("$", "").gsub("/year", "")
    actual_pay = actual_pay.gsub("k", "000").gsub(",","")
    if actual_pay.include? "-"
      actual_pay = actual_pay.split("-")
      fail "At line number #{line_num}\nExpected: #{salary}\n within\nGot: #{actual_salary}" unless salary.to_i <= actual_pay[1].to_i
    else
      fail "At line number #{line_num}\nExpected: #{salary}\nless or equal to\nGot: #{actual_salary}" unless salary.to_i <= actual_pay.to_i
    end
  end
end


def search_by_job(search_name)
    unless search_name ==""
      WaitUtility.wait_untill_elements_size_steadied
      
      @page_object.searchRelated.jobSearchBox =""
      @page_object.searchRelated.jobSearchBox = search_name
      
      @page_object.searchRelated.search_element.click
      WaitUtility.wait_untill_elements_size_steadied
    end
  end
