Then(/^the user select region$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  # @page_object.searchSchoolsPage.locationReset_element.click
  @page_object.searchRelated.resetEles_elements[3].click
  @page_object.searchSchoolsPage.region_element.click
end

Then(/^the user select state$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  # @page_object.searchSchoolsPage.locationReset_element.click
  @page_object.searchRelated.resetEles_elements[3].click
  @page_object.searchSchoolsPage.state_element.click
end

Then(/^the user select zip code$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  # @page_object.searchSchoolsPage.locationReset_element.click
  @page_object.searchRelated.resetEles_elements[3].click
  @page_object.searchSchoolsPage.zip_element.click
end

When(/^the user select Zip and entry the "([^"]*)"$/) do |zip|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  # @page_object.searchSchoolsPage.locationReset_element.click
  @page_object.searchRelated.resetEles_elements[3].click
  @page_object.searchSchoolsPage.zip_element.click

  @page_object.searchSchoolsPage.zipcode = zip
  BROWSER.send_keys :return
end

When(/^the user select the state and choose one "([^"]*)" form drop\-down$/) do |state|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  # @page_object.searchSchoolsPage.locationReset_element.click
  @page_object.searchRelated.resetEles_elements[3].click
  @page_object.searchSchoolsPage.state_element.click

  @page_object.searchSchoolsPage.stateDrop = state
end

When(/^the user select the state and choose "([^"]*)" form drop\-down$/) do |state|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  # @page_object.searchSchoolsPage.locationReset_element.click
  @page_object.searchRelated.resetEles_elements[3].click
  @page_object.searchSchoolsPage.state_element.click

  @page_object.searchSchoolsPage.stateDrop = state
end

When(/^the user select "([^"]*)" region$/) do |region|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  # @page_object.searchSchoolsPage.locationReset_element.click
  @page_object.searchRelated.resetEles_elements[3].click
  @page_object.searchSchoolsPage.region_element.click

  @page_object.searchSchoolsPage.regionDrop = region 
end

# selected -------------------
Then(/^the system display "([^"]*)" on top left under search box$/) do |expected_result|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  expect(@page_object.searchSchoolsPage.firstSelected_element.visible?).to be(true), "The #{expected_result} did not displayed."
  result = @page_object.searchSchoolsPage.firstSelected_element.text 
  expect(result.upcase).to eq(expected_result.upcase), "Expected: #{expected_result} \nGot: #{result}"
end

Then(/^the region filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be checked."

  expect(@page_object.searchSchoolsPage.region_selected?).to be(true), "The region #{error_msg}"
end

Then(/^the state filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be checked."

  expect(@page_object.searchSchoolsPage.state_selected?).to be(true), "The state #{error_msg}"
end

Then(/^the zip code filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be checked."

  expect(@page_object.searchSchoolsPage.zip_selected?).to be(true), "The zip #{error_msg}"
end

Then(/^the region, state, and zip filter should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."

  expect(@page_object.searchSchoolsPage.region_selected?).to be(false) , "The region #{error_msg}"
  expect(@page_object.searchSchoolsPage.state_selected?).to be(false) , "The state #{error_msg}"
  expect(@page_object.searchSchoolsPage.zip_selected?).to be(false) , "The zip #{error_msg}"
end

Then(/^the user select the location reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.locationReset_element.click
  @page_object.searchRelated.resetEles_elements[3].click
end
# # display --------------------------------------------------
Then(/^the region drop\-down would be displayed$/) do |expected_result|
  expected_result = expected_result.strip.split("\n")
  actual_result = @page_object.searchSchoolsPage.regionDrop_options
  error_msg1 = "Expected: #{expected_result}\nGot: #{actual_result} \n
    The system did not display but found in the feature file: #{expected_result - actual_result}"
  error_msg2 = "Expected: #{expected_result}\nGot: #{actual_result} \n
    The system displayed but did not find in the feature file:: #{actual_result - expected_result}"
  
  expect((expected_result - actual_result).empty?).to be(true), error_msg1
  expect((actual_result - expected_result).empty?).to be(true), error_msg2
end

Then(/^the state drop\-down would be displayed$/) do |expected_result|
  expected_result = expected_result.strip.split("\n")
  actual_result = @page_object.searchSchoolsPage.stateDrop_options
 
  error_msg1 = "Expected: #{expected_result}\nGot: #{actual_result} \n
    The system did not display but found in the feature file: #{expected_result - actual_result}"
  error_msg2 = "Expected: #{expected_result}\nGot: #{actual_result} \n
    The system displayed but did not find in the feature file:: #{actual_result - expected_result}"
  
  expect((expected_result - actual_result).empty?).to be(true), error_msg1
  expect((actual_result - expected_result).empty?).to be(true), error_msg2
end

Then(/^the result will only show region school\(s\) by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers certificate. The system should display it.\n result(s): \n #{body}"
  end
end

Then(/^the result will not show region school\(s\) by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  if result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers certificate. The system should display it.\n result(s): \n #{body}"
  end
end

Then(/^the result will only show "([^"]*)" region school\(s\)$/) do |arg1, southeast|
  expected_result = southeast.strip.split(" ")
  test_support = TestSupport.new
  page_num = "ALL"
  @page_num_movment_old ||= 1
  @page_num_movment_index ||= 1

  next_page_exist = true
  p_n = 1
  while next_page_exist
    @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
    WaitUtility.wait_untill_elements_size_steadied
    p "***** Wait .... Reading the results ****"
    p "Page Number: #{p_n}"
    
    table = @page_object.searchSchoolsPage.searchResults_element
    per_page = table.rows-1
    result = TableUtiity.whole_colmun_included_state(table, 'Location', expected_result)

    unless result.empty?
      # body = @page_object.searchSchoolsPage.searchResults_element.text
      fail "Expected: #{expected_result} \n the restult(s) display school(s) which is not in the zip code area\n Got: #{result}"
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

Then(/^the result will only show school\(s\) within the state \- using "([^"]*)"$/) do |state_abbr|
  next_page_exist = true
  test_support = TestSupport.new
  page_num = "ALL"
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
    result = TableUtiity.whole_colmun_included_state(table, 'Location', state_abbr)

    unless result.empty?
      # body = @page_object.searchSchoolsPage.searchResults_element.text
      fail "Expected: #{city_array} \n the restult(s) display school(s) which is not in the zip code area\n Got: #{result}"
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

Then(/^the result will show schools in the zip code \- using "([^"]*)"$/) do |city|
  next_page_exist = true
  test_support = TestSupport.new
  page_num = "ALL"
  @page_num_movment_old ||= 1
  @page_num_movment_index ||= 1
  p_n = 1
  city_array =[]
  cities = city.upcase.strip.split(';')
  cities.each {|city| city_array = city_array + [city.strip]}
  while next_page_exist
    @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
    WaitUtility.wait_untill_elements_size_steadied
    p "***** Wait .... Reading the results ****"
    p "Page Number: #{p_n}"
    
    table = @page_object.searchSchoolsPage.searchResults_element
    per_page = table.rows-1
    result = TableUtiity.whole_colmun_included_cityState_array(table, 'Location', city_array)

    unless result.empty?
      # body = @page_object.searchSchoolsPage.searchResults_element.text
      fail "Expected: #{city_array} \n the restult(s) display school(s) which is not in the zip code area\n Got: #{result}"
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
