Then(/^the system will display (\d+) universities per page in ascending order$/) do |per_page|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
    
  per_page = per_page.to_i

  table = @page_object.searchSchoolsPage.searchResults_element
  
  expect(table.rows-1).to eq per_page
  
  return_result = []
  p "***** Wait .... Checking the sorting results ****"
  
  for x in 1..per_page
    table_cell = table[x]['School Name']
    return_result = return_result + [table_cell.text]
  end
  expect( ascending?(return_result)).to be true
end

When(/^the user search for the university by "([^"]*)"$/) do |search_name|
  search_by_name(search_name)
end

Then(/^the system should display at least one school "([^"]*)" that match for each search by "([^"]*)"$/) do |result_name, search_name|
  search_by_name(search_name)
  find_if_there_is_match(search_name, result_name)
end

Then(/^the system will display the result\(s\) that match "([^"]*)"$/) do |result_name|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  begin
    table_cell = @page_object.searchSchoolsPage.searchResults_element[result_name]['School Name']
  rescue
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} \n Got: No result matched or found \n result(s): \n #{body}"
  end
  
  expect(table_cell.text.upcase.start_with? result_name.upcase)
end

Then(/^the system will display the result\(s\) that exact match "([^"]*)"$/) do |search_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  begin
    table_cell = @page_object.searchSchoolsPage.searchResults_element[search_name]['School Name']
  rescue
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{search_name} \n Got: No result matched or found \n result(s): \n #{body}"
  end
  
  expect(table_cell.text.upcase).to eq search_name.upcase
end

Then(/^the exact matching school by "([^"]*)" will be at the top of the search result$/) do |search_name|
  WaitUtility.wait_untill_elements_size_steadied
  begin
    table_cell = @page_object.searchSchoolsPage.searchResults_element[1]['School Name']
  rescue
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{search_name} \n Got: No result matched or found \n result(s): \n #{body}"
  end
  
  expect(table_cell.text.upcase).to eq search_name.upcase
end

Then(/^the system will display the matching school "([^"]*)" at the top of the search result\(s\)$/) do |partial_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  # sleep 1
  school_name_results = get_data_table_for_column(1)
  matching_school_name_with_partial_name(school_name_results, partial_name)
  check_top_results(school_name_results, partial_name)
end

Then(/^the system will display the result\(s\) \- (\d+) universities per page \- that include the "([^"]*)"$/) do |per_page, partial_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  per_page = per_page.to_i

  table = @page_object.searchSchoolsPage.searchResults_element
  
  expect(table.rows-1).should be <= per_page
  per_page = table.rows-1
  
  p "***** Wait .... Checking the results ****"
  
  for x in 1..per_page
    table_cell = table[x]['School Name']
    return_result = table_cell.text
    # p return_result
    # p partial_name
    expect(return_result.include? partial_name).to be true
  end

end

Then(/^the matching school by "([^"]*)" will be at the top of the search result\(s\)$/) do |partial_name|
  WaitUtility.wait_untill_elements_size_steadied
  table = @page_object.searchSchoolsPage.searchResults_element
  per_page = table.rows-1
  
  return_result = []
  p "***** Wait .... Checking the results ****"
  
  for x in 1..per_page
    table_cell = table[x]['School Name']
    return_result = return_result + [table_cell.text]
  end
  fail "The matching schools are not at top. \n Expected: \n #{return_result.sort} \n Got: \n #{return_result} " if ascending?(return_result) == false
end

Then(/^the system will display "([^"]*)"$/) do |placeholder_name|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.searchRelated.searchBox_element.when_visible(TIME_OUT_LIMIT)
  # sleep 1
  result = @page_object.searchRelated.searchBox_element.attribute_value 'placeholder'
  expect(result).to eq placeholder_name
end

#**************************************
def search_by_name(search_name)
  unless search_name ==""
    WaitUtility.wait_untill_elements_size_steadied
    @page_object.menuBar.search_element.click
    # @page_object.searchRelated.searchBox_element.when_visible(TIME_OUT_LIMIT)
    @page_object.searchRelated.searchBox =""
    @page_object.searchRelated.searchBox = search_name

    WaitUtility.wait_untill_elements_size_steadied
    @page_object.searchSchoolsPage.search_element.when_visible(TIME_OUT_LIMIT).click
    WaitUtility.wait_untill_elements_size_steadied
  end
end

def find_if_there_is_match(search_name, result_name)
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  table_element = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table_element, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{search_name} \n Got: No result matched or found \n result(s): \n #{body}"
  end
end

def ascending? (return_result)
  per_page = return_result.size
  expected_result = return_result.sort
  for i in 0..per_page
    yes = false
    break unless return_result[i] == expected_result[i]
    yes = true
  end
  yes
end

def check_top_results(school_name_results, partial_name)
  p "***** Wait .... Checking the results ****"
  rank_index = 0
  rank_school_name = ""
  top_in_row = 0
  check_partial_name = false
  # school_name_results.each do |school_name|
  for i in 0..school_name_results.size-1
    # p top_in_row
    school_name = school_name_results[i]
    school_name.upcase.include? partial_name.upcase
    if school_name.upcase.include? partial_name.upcase 
      check_partial_name = false

      if i == top_in_row
        # p 'check_partial_name = false'
        top_in_row = i+1
        rank_school_name = school_name      
      else
        error_msg = "The matching schools are not at top. \n Expected: #{rank_school_name} \n to be at the top: #{school_name}"
        fail error_msg
      end

    else
      check_partial_name = true
    end

    if check_partial_name 
      # p "check_partial_name = true"
      school_name_array = school_name.gsub('-', ' - ').upcase.split(" ")
      partial_name_array = partial_name.gsub('-', ' - ').upcase.split(' ')
    
      new_rank_index = (partial_name_array - school_name_array).size
      if new_rank_index >= rank_index 
        rank_index = new_rank_index
        rank_school_name = school_name
      else
        error_msg = "The matching schools are not at top. \n Expected: #{rank_school_name} \n to be at the top: #{school_name}"
        fail error_msg
      end
    end
  end
end

def matching_school_name_with_partial_name(school_name_results, partial_name)
  p "***** Wait .... Checking the results ****"
  school_name_results.each do |school_name|
    
    unless school_name.upcase.include? partial_name.upcase
      school_name_array = school_name.upcase.split(" ")
      partial_name_array = partial_name.upcase.split(' ')
      fail "Expected: #{partial_name} \n Got: #{school_name}" unless (partial_name_array - school_name_array).size <  partial_name_array.size
    end
  end
end

def get_data_table_for_column(col_num)
  return_result =[]
  next_page_exist = true
  p_n = 1
  page_num = "ALL"
  test_support = TestSupport.new
  @page_num_movment_old ||= 1
  @page_num_movment_index ||= 1

  while next_page_exist
    table = @page_object.searchSchoolsPage.searchResults_element
    per_page = table.rows-1
    p "***** Wait .... Reading the results ****"
    p "Page Number: #{p_n}"
    for x in 1..per_page
      table_cell = table[x][col_num]
      return_result = return_result + [table_cell.text]
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
  return return_result
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
