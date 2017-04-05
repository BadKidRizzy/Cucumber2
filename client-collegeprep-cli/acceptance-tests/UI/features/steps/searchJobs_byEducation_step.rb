When(/^the user select "([^"]*)" from Required Education$/) do |selected_edus|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  selected_edus = selected_edus.split(',')

  selected_edus.each do |selected_edu|
  
    case selected_edu.downcase.strip
    when "not specified"
      @page_object.searchJobsPage.not_element.click
    when "none"
      @page_object.searchJobsPage.none_element.click
    when "high school"
      @page_object.searchJobsPage.highSchool_element.click
    when "associate's degree"
      @page_object.searchJobsPage.associate_element.click
    when "bachelor's degree"
      @page_object.searchJobsPage.bachelor_element.click
    when "graduate degree"
      @page_object.searchJobsPage.graduate_element.click
    when "doctorate"
      @page_object.searchJobsPage.doctorate_element.click
    else
      fail "Please define #{selected_stem} in your code"
    end

  end
end

When(/^the user select the required education reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  # @page_object.searchJobsPage.eduReset_element.click
  @page_object.searchRelated.resetEles_elements[2].click
end

# # # # selected -----------

Then(/^the "([^"]*)" filter would be selected from Required Education$/) do|selected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  case selected_name.downcase
  when "not specified"
    actual_result = @page_object.searchJobsPage.not_selected?
  when "none"
    actual_result = @page_object.searchJobsPage.none_selected?
  when "high school"
    actual_result = @page_object.searchJobsPage.highSchool_selected?
  when "associate's degree"
    actual_result = @page_object.searchJobsPage.associate_selected?
  when "bachelor's degree"
    actual_result = @page_object.searchJobsPage.bachelor_selected?
  when "graduate degree"
    actual_result = @page_object.searchJobsPage.graduate_selected?
  when "doctorate"
    actual_result = @page_object.searchJobsPage.doctorate_selected?
  else
    fail "Please define #{selected_name} in your code"
  end
  expect(actual_result).to be(true), "The #{selected_name} filter expected to be checked."
end

Then(/^the required education filters should be unselected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  selected_names = ["not specified", "none", "high school", "associate's degree", 
                    "bachelor's degree", "graduate degree", "doctorate"]
  selected_names.each  do |selected_name|
    
    case selected_name.downcase
    when "not specified"
      actual_result = @page_object.searchJobsPage.not_selected?
    when "none"
      actual_result = @page_object.searchJobsPage.none_selected?
    when "high school"
      actual_result = @page_object.searchJobsPage.highSchool_selected?
    when "associate's degree"
      actual_result = @page_object.searchJobsPage.associate_selected?
    when "bachelor's degree"
      actual_result = @page_object.searchJobsPage.bachelor_selected?
    when "graduate degree"
      actual_result = @page_object.searchJobsPage.graduate_selected?
    when "doctorate"
      actual_result = @page_object.searchJobsPage.doctorate_selected?
    else
      fail "Please define #{selected_name} in your code"
    end
    expect(actual_result).to be(false), "The #{selected_name} filter expected to be checked."
  end
end

# # # #display -------------------
Then(/^the system will display the Jobs name that not specified Req\. Education \- check for "([^"]*)" page\(s\)$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  
  test_support = DetailPageSupport.new
  actual_results = test_support.compare_education_in_detail_pages("NOT SPECIFIED" ,page_num)
end

Then(/^the system will display the Jobs name that not required education \- check for "([^"]*)" page\(s\)$/) do |page_num|
 @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  
  test_support = DetailPageSupport.new
  actual_results = test_support.compare_education_in_detail_pages("NOT" ,page_num)
end

Then(/^the system will display the Jobs name that required high school diploma \- check for "([^"]*)" page\(s\)$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  
  test_support = DetailPageSupport.new
  actual_results = test_support.compare_education_in_detail_pages("High School" ,page_num)
end

Then(/^the system will display the Jobs name that required associate degree \- check for "([^"]*)" page\(s\)$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  
  test_support = DetailPageSupport.new
  actual_results = test_support.compare_education_in_detail_pages("2 Year Degree" ,page_num)
end

Then(/^the system will display the Jobs name that required bachelor's degree \- check for "([^"]*)" page\(s\)$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  
  test_support = DetailPageSupport.new
  actual_results = test_support.compare_education_in_detail_pages("4 Year Degree" ,page_num)
end

Then(/^the system will display the Jobs name that required graduate degree \- check for "([^"]*)" page\(s\)$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  
  test_support = DetailPageSupport.new
  actual_results = test_support.compare_education_in_detail_pages("Graduate Degree" ,page_num)
end

Then(/^the system will display the Jobs name that required doctorate degree \- check for "([^"]*)" page\(s\)$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  
  test_support = DetailPageSupport.new
  actual_results = test_support.compare_education_in_detail_pages("Doctorate" ,page_num)
end

Then(/^the system will display the "([^"]*)" that not specified requirement for education \- check for "([^"]*)" page\(s\)$/) do |expected_job, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  
  test_support = DetailPageSupport.new
  actual_results = test_support.compare_jobName_and_education_in_detail_pages(expected_job, "NOT SPECIFIED" ,page_num)
end

Then(/^the system will display the "([^"]*)" that not required education \- check for "([^"]*)" page\(s\)$/) do |expected_job, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  
  test_support = DetailPageSupport.new
  actual_results = test_support.compare_jobName_and_education_in_detail_pages(expected_job, "Not" ,page_num)
end

Then(/^the system will display the "([^"]*)" that required high school diploma \- check for "([^"]*)" page\(s\)$/) do |expected_job, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  
  test_support = DetailPageSupport.new
  actual_results = test_support.compare_jobName_and_education_in_detail_pages(expected_job, "High School" ,page_num)
end

Then(/^the system will display the "([^"]*)" that required associate degree \- check for "([^"]*)" page\(s\)$/) do |expected_job, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  
  test_support = DetailPageSupport.new
  actual_results = test_support.compare_jobName_and_education_in_detail_pages(expected_job, "2 Year Degree" ,page_num)
end

Then(/^the system will display the "([^"]*)" that required bachelor's degree \- check for "([^"]*)" page\(s\)$/) do |expected_job, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  
  test_support = DetailPageSupport.new
  actual_results = test_support.compare_jobName_and_education_in_detail_pages(expected_job, "4 Year Degree" ,page_num)
end

Then(/^the system will display the "([^"]*)" that required graduate degree \- check for "([^"]*)" page\(s\)$/) do |expected_job, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  
  test_support = DetailPageSupport.new
  actual_results = test_support.compare_jobName_and_education_in_detail_pages(expected_job, "Graduate Degree" ,page_num)
end

Then(/^the system will display the "([^"]*)" that required doctorate degree \- check for "([^"]*)" page\(s\)$/) do |expected_job, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  
  test_support = DetailPageSupport.new
  actual_results = test_support.compare_jobName_and_education_in_detail_pages(expected_job, "Doctorate" ,page_num)
end


