When(/^the user type the minimum "([^"]*)" for tuition$/) do |minimum|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.tuitionReset_element.click
  @page_object.searchRelated.resetEles_elements[4].click
  @page_object.searchSchoolsPage.minimum = minimum
  BROWSER.send_keys :return
end

When(/^the user type the maximum "([^"]*)" for tuition$/) do |maximum|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.tuitionReset_element.click
  @page_object.searchRelated.resetEles_elements[4].click
  @page_object.searchSchoolsPage.maximum = maximum
  BROWSER.send_keys :return
end

When(/^the user type the "([^"]*)" and "([^"]*)" amount for tuition$/) do |minimum, maximum|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.tuitionReset_element.click
  @page_object.searchRelated.resetEles_elements[4].click
  @page_object.searchSchoolsPage.minimum = minimum
  @page_object.searchSchoolsPage.maximum = maximum
  BROWSER.send_keys :return
end

When(/^the user type the minimum "([^"]*)" that not in the school tuition range$/) do |minimum|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.tuitionReset_element.click
  @page_object.searchRelated.resetEles_elements[4].click
  @page_object.searchSchoolsPage.minimum = minimum
  BROWSER.send_keys :return
end

When(/^the user type the maximum "([^"]*)" that not in the school tuition range$/) do |maximum|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.tuitionReset_element.click
  @page_object.searchRelated.resetEles_elements[4].click
  @page_object.searchSchoolsPage.maximum = maximum
  BROWSER.send_keys :return
end

# display -------------------
Then(/^the search result will only show schools with tuition the same as or more than the minimum "([^"]*)"$/) do |minimum|
  next_page_exist = true
  page_num = "ALL"
  test_support = TestSupport.new
  @page_num_movment_old ||= 1
  @page_num_movment_index ||= 1
  p_n = 1
  
  while next_page_exist
    @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
    WaitUtility.wait_untill_elements_size_steadied
    p "***** Wait .... Reading the results ****"
    p "Page Number: #{p_n}"
    
    table = @page_object.searchSchoolsPage.searchResults_element
    per_page = table.rows-1
    result = TableUtiity.whole_colmun_eq_greater_tuition(table, 'Tuition', minimum)

    unless result.empty?
      fail "Expected: #{minimum} tuition to be more or equal.\n Got: #{result}"
    end

    fail "Expected results per page:#{Per_Page} \n Got: #{per_page} " if (per_page < Per_Page) && (!test_support.next_disable?)

    if (!test_support.next_disable?)
      if (page_num.upcase != 'ALL') && (p_n == page_num.to_i)
        next_page_exist = false 
      else
        check_page_num_movement?
        @page_object.searchSchoolsPage.next_element.when_present(TIME_OUT_LIMIT).click
        
        WaitUtility.wait_untill_elements_size_steadied
      end
    else
      next_page_exist = false
    end
    p_n +=1
  end
end

Then(/^the search result will only show schools with tuition the same as or less than the maximum "([^"]*)"$/) do |maximum|
  next_page_exist = true
  page_num = "ALL"
  test_support = TestSupport.new
  @page_num_movment_old ||= 1
  @page_num_movment_index ||= 1
  p_n = 1
  
  while next_page_exist
    @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
    WaitUtility.wait_untill_elements_size_steadied
    p "***** Wait .... Reading the results ****"
    p "Page Number: #{p_n}"
    
    table = @page_object.searchSchoolsPage.searchResults_element
    per_page = table.rows-1
    result = TableUtiity.whole_colmun_less_eq_tuition(table, 'Tuition', maximum)

    unless result.empty?
      fail "Expected: #{minimum} tuition to be less or equal.\n Got: #{result}"
    end

    fail "Expected results per page:#{Per_Page} \n Got: #{per_page} " if (per_page < Per_Page) && (!test_support.next_disable?)

    if (!test_support.next_disable?)
      if (page_num.upcase != 'ALL') && (p_n == page_num.to_i)
        next_page_exist = false 
      else
        check_page_num_movement?
        @page_object.searchSchoolsPage.next_element.when_present(TIME_OUT_LIMIT).click
        
        WaitUtility.wait_untill_elements_size_steadied
      end
    else
      next_page_exist = false
    end
    p_n +=1
  end
end

Then(/^the search result will only show schools with tuition range between the "([^"]*)" and "([^"]*)" amount$/) do |minimum, maximum|
  next_page_exist = true
  page_num = "ALL"
  test_support = TestSupport.new
  @page_num_movment_old ||= 1
  @page_num_movment_index ||= 1
  p_n = 1
  
  while next_page_exist
    @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
    WaitUtility.wait_untill_elements_size_steadied
    p "***** Wait .... Reading the results ****"
    p "Page Number: #{p_n}"
    
    table = @page_object.searchSchoolsPage.searchResults_element
    per_page = table.rows-1
    result = TableUtiity.whole_colmun_between_tuition(table, 'Tuition', minimum, maximum)

    unless result.empty?
      fail "Expected: the tuition range between the #{minimum} and #{maximum}.\n Got: #{result}"
    end

    fail "Expected results per page:#{Per_Page} \n Got: #{per_page} " if (per_page < Per_Page) && (!test_support.next_disable?)
    
    if (!test_support.next_disable?)
      if (page_num.upcase != 'ALL') && (p_n == page_num.to_i)
        next_page_exist = false 
      else
        check_page_num_movement?
        @page_object.searchSchoolsPage.next_element.when_present(TIME_OUT_LIMIT).click
        
        WaitUtility.wait_untill_elements_size_steadied
      end
    else
      next_page_exist = false
    end
    p_n +=1
  end
end

Then(/^the result will not show school\(s\) by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  if result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers certificate. The system should display it.\n result(s): \n #{body}"
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
