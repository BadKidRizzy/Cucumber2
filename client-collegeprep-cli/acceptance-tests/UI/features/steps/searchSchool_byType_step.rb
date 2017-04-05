When(/^the user select public$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.resetType_element.click
  @page_object.searchRelated.resetEles_elements[0].click
  @page_object.searchSchoolsPage.public_element.click
end

Then(/^the public filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  expect(@page_object.searchSchoolsPage.public_checked?).to be true
end

When(/^the user select private$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.resetType_element.click
  @page_object.searchRelated.resetEles_elements[0].click
  @page_object.searchSchoolsPage.private_element.click
end

Then(/^the private filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  expect(@page_object.searchSchoolsPage.private_checked?).to be true
end

When(/^the user select the school type reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.resetType_element.click
  @page_object.searchRelated.resetEles_elements[0].click
end

Then(/^the public and private filter should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  expect(@page_object.searchSchoolsPage.public_checked?).to be false
  expect(@page_object.searchSchoolsPage.private_checked?).to be false
end

Then(/^the result will only show public school\(s\) by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} \n Got: No result matched or found \n result(s): \n #{body}"
  end
end

Then(/^the result will not show public school\(s\) by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  check_name_not_found_results(result_name)
end

Then(/^the result will only show private school\(s\) by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} \n Got: No result matched or found \n result(s): \n #{body}"
  end
end

Then(/^the result will not show private school\(s\) by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  check_name_not_found_results(result_name)
end

When(/^the user select public and private$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  @page_object.searchSchoolsPage.public_element.click
  @page_object.searchSchoolsPage.private_element.click
  WaitUtility.wait_until_page_loaded(TIME_OUT_LIMIT)
end

Then(/^the result will show school\(s\) by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table_element = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table_element, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} \n Got: No result matched or found \n result(s): \n #{body}"
  end
end

def check_name_not_found_results(result_name)
  page_num = "ALL"
  test_support = TestSupport.new
  @page_num_movment_old ||= 1
  @page_num_movment_index ||= 1
  next_page_exist = true
  p_n = 1
  while next_page_exist
    p "***** Wait .... Checking the results ****"
    p "Page Number: #{p_n}"
    table = @page_object.searchSchoolsPage.searchResults_element
    per_page = table.rows-1

    table = @page_object.searchSchoolsPage.searchResults_element
    result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
    if result
      body = @page_object.searchSchoolsPage.searchResults_element.text
      fail "Expected: #{result_name} \n Got: Found in the search result(s): \n #{body}"
    end

    WaitUtility.wait_untill_elements_size_steadied
     
    fail "Expected results per page:#{Per_Page} \n Got: #{per_page} " if (per_page < Per_Page) && (!test_support.next_disable?)
    
    if (!test_support.next_disable?)
      if (page_num.upcase != 'ALL') && (p_n == page_num.to_i)
        next_page_exist = false 
      else
        check_page_num_movement?
        @page_object.searchSchoolsPage.next_element.when_present(TIME_OUT_LIMIT).click
        
        WaitUtility.wait_untill_elements_size_steadied
        @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
      end
    else
      next_page_exist = false
    end
    p_n +=1
  end
end

def check_page_num_movement?
  WaitUtility.wait_untill_elements_size_steadied
  page_num_movment = @page_object.searchRelated.pageNum_element.text.to_i
  if @page_num_movment_old == page_num_movment
    p "The active page is: #{page_num_movment} "
    @page_num_movment_index += 1
    fail"The page number did not increased by clicking on Next button" if @page_num_movment_index == 4
  else
    @page_num_movment_old = page_num_movment
  end
end

