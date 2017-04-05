When(/^the user select "([^"]*)" from employment type$/) do |selected_names|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  selected_names = selected_names.split(',')

  selected_names.each do |selected_name|
  
    case selected_name.downcase.strip
    when "full-time"
      @page_object.searchJobsPage.full_element.click
    when "part-time"
      @page_object.searchJobsPage.part_element.click
    when "contractor"
      @page_object.searchJobsPage.contractor_element.click
    when "intern"
      @page_object.searchJobsPage.intern_element.click
      when "per diem"
      @page_object.searchJobsPage.perDiem_element.click
    else
      fail "Please define #{selected_name} in your code"
    end

  end
end

When(/^the user just select "([^"]*)" from employment type$/) do |selected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  
  # @page_object.searchJobsPage.employReset_element.click
  @page_object.searchRelated.resetEles_elements[4].click
  WaitUtility.wait_untill_elements_size_steadied
  
    case selected_name.downcase.strip
    when "full-time"
      @page_object.searchJobsPage.full_element.click
    when "part-time"
      @page_object.searchJobsPage.part_element.click
    when "contractor"
      @page_object.searchJobsPage.contractor_element.click
    when "intern"
      @page_object.searchJobsPage.intern_element.click
      when "per diem"
      @page_object.searchJobsPage.perDiem_element.click
    else
      fail "Please define #{selected_name} in your code"
    end

end

When(/^the user select the employment type reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchJobsPage.employReset_element.click
  @page_object.searchRelated.resetEles_elements[4].click
end

# # # selected -----------

Then(/^the "([^"]*)" filter would be selected from employment type$/) do |selected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  case selected_name.downcase
  when "full-time"
    actual_result = @page_object.searchJobsPage.full_checked?
  when "part-time"
    actual_result = @page_object.searchJobsPage.part_checked?
  when "contractor"
    actual_result = @page_object.searchJobsPage.contractor_checked?
  when "intern"
    actual_result = @page_object.searchJobsPage.intern_checked?
  when "per diem"
    actual_result = @page_object.searchJobsPage.perDiem_checked?
  else
    fail "Please define #{selected_name} in your code"
  end
  expect(actual_result).to be(true), "The #{selected_name} filter expected to be checked."
end

Then(/^the employment type filters should be unselected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  selected_names = ["full-time", "part-time", "contractor", "intern"]
  selected_names.each  do |selected_name|
    
    case selected_name.downcase
    when "full-time"
      actual_result = @page_object.searchJobsPage.full_checked?
    when "part-time"
      actual_result = @page_object.searchJobsPage.part_checked?
    when "contractor"
      actual_result = @page_object.searchJobsPage.contractor_checked?
    when "intern"
      actual_result = @page_object.searchJobsPage.intern_checked?
    when "per diem"
      actual_result = @page_object.searchJobsPage.perDiem_checked?
    else
    fail "Please define #{selected_name} in your code"
    end
    expect(actual_result).to be(false), "The #{selected_name} filter expected to be checked."
  end
end

# # #display -------------------
Then(/^the system will display the Jobs name that offer "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |expected_name , page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  WaitUtility.wait_untill_elements_size_steadied
  # sleep 5
  test_support = DetailPageSupport.new
  actual_results = test_support.compare_employment_in_detail_pages(expected_name, page_num)
end

Then(/^the system will display the "([^"]*)" that offer "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |expected_job, expected_name, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  WaitUtility.wait_untill_elements_size_steadied
  # sleep 5
  test_support = DetailPageSupport.new
  actual_results = test_support.compare_jobName_and_employment_in_detail_pages(expected_job, expected_name, page_num)
end

