When(/^the user select "([^"]*)" from location$/) do |selected_names|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  selected_names = selected_names.split(',')

  selected_names.each do |selected_name|
  
    case selected_name.downcase.strip
    when "zip code"
      @page_object.searchJobsPage.zip_element.click
    when "city"
      @page_object.searchJobsPage.city_element.click
    when "state"
      @page_object.searchJobsPage.state_element.click
    else
      fail "Please define #{selected_name} in your code"
    end

  end
end

When(/^the user select the state from location and choose "([^"]*)"$/) do |state|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @page_object.searchJobsPage.state_element.click
  
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.searchJobsPage.stateBox = state
end

When(/^the user select zip code from location and entry the "([^"]*)"$/) do |zip|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @page_object.searchJobsPage.zip_element.click

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.searchJobsPage.zipBox = zip
  BROWSER.send_keys :return
end

When(/^the user select city from location and entry the "([^"]*)"$/) do |city|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @page_object.searchJobsPage.city_element.click

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.searchJobsPage.cityBox = city
  BROWSER.send_keys :return

  @city = city
end

When(/^the user select the jobs location reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchJobsPage.locationReset_element.click
  @page_object.searchRelated.resetEles_elements[3].click
end

# # selected -----------

Then(/^the "([^"]*)" filter would be selected from location$/) do |selected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  case selected_name.downcase
  when "zip code"
    actual_result = @page_object.searchJobsPage.zip_selected?
  when "city"
    actual_result = @page_object.searchJobsPage.city_selected?
  when "state"
    actual_result = @page_object.searchJobsPage.state_selected?
  else
    fail "Please define #{selected_name} in your code"
  end
  expect(actual_result).to be(true), "The #{selected_name} filter expected to be checked."
end

Then(/^the location filters should be unselected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  selected_names = ["zip code", "city", "state"]
  selected_names.each  do |selected_name|
    
    case selected_name.downcase
    when "zip code"
      actual_result = @page_object.searchJobsPage.zip_selected?
    when "city"
      actual_result = @page_object.searchJobsPage.city_selected?
    when "state"
      actual_result = @page_object.searchJobsPage.state_selected?
    else
      fail "Please define #{selected_name} in your code"
    end
    expect(actual_result).to be(false), "The #{selected_name} filter expected to be checked."
  end
end

# display -----------------
Then(/^the result will show Job\(s\) within the state \- using "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |state, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  WaitUtility.waitUntillTableSteadied
  line_num = 0

  test_support = TestSupport.new
  actual_locations = test_support.get_values_col_for_pages("Location", page_num)
  p "***** Wait .... Checking the results ****"

  actual_locations.each do |actual_location|
    line_num +=1
    
    actual_state = actual_location.split(",")[1]
    actual_state = actual_state.strip.upcase unless actual_state.nil? 
    expect(state.upcase).to eq(actual_state), "At line number #{line_num}\nExpected: #{state}\nGot: #{actual_location}"
  end
end

Then(/^the result will show Job\(s\) in the zip code \- using "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |state, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  WaitUtility.waitUntillTableSteadied
  line_num = 0

  test_support = TestSupport.new
  actual_locations = test_support.get_values_col_for_pages("Location", page_num)
  p "***** Wait .... Checking the results ****"

  actual_locations.each do |actual_location|
    line_num +=1
    actual_state = actual_location.strip.upcase 
    expect(state.upcase).to eq(actual_state), "At line number #{line_num}\nExpected: #{state}\nGot: #{actual_location}"
  end
end

Then(/^the result will show Job\(s\) within the city \- using "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |state, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  WaitUtility.waitUntillTableSteadied
  line_num = 0

  test_support = TestSupport.new
  actual_locations = test_support.get_values_col_for_pages("Location", page_num)
  p "***** Wait .... Checking the results ****"

  actual_locations.each do |actual_location|
    line_num +=1
    expect(actual_location.include? @city).to eq(true), "At line number #{line_num}\nExpected: #{@city}\nGot: #{actual_location}"
    actual_state = actual_location.split(",")[1]
    actual_state = actual_state.strip.upcase unless actual_state.nil? 
    expect(state.include? actual_state).to eq(true), "At line number #{line_num}\nExpected: #{@city} be within #{state}\nGot: #{actual_location}"
  end
end

# display with job ---------

Then(/^the result will display "([^"]*)" within the state \- using "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |expected_job, state, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  WaitUtility.waitUntillTableSteadied
  line_num = 0

  test_support = TestSupport.new
  actual_results = test_support.get_values_of_2col_for_pages("Job Name", "Location", page_num)
  p "***** Wait .... Checking the results ****"

  actual_results.each do |actual_result|
    actual_result = actual_result.split(";")
    actual_job = actual_result[0]
    actual_location = actual_result[1]
    line_num +=1
    fail "At line number #{line_num}\nExpected: #{expected_job}\n Got: #{actual_job}" unless actual_job.upcase.include? expected_job.upcase
    
    actual_state = actual_location.split(",")[1]
    actual_state = actual_state.strip.upcase unless actual_state.nil? 
    expect(state.upcase).to eq(actual_state), "At line number #{line_num}\nExpected: #{state}\nGot: #{actual_location}"
  end
end

Then(/^the result will display "([^"]*)" in the zip code \- using "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |expected_job, state, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  WaitUtility.waitUntillTableSteadied
  line_num = 0

  test_support = TestSupport.new
  actual_results = test_support.get_values_of_2col_for_pages("Job Name", "Location", page_num)
  p "***** Wait .... Checking the results ****"

  actual_results.each do |actual_result|
    actual_result = actual_result.split(";")
    actual_job = actual_result[0]
    actual_location = actual_result[1]
    line_num +=1
    fail "At line number #{line_num}\nExpected: #{expected_job}\n Got: #{actual_job}" unless actual_job.upcase.include? expected_job.upcase
    
    actual_state = actual_location.strip.upcase 
    expect(state.upcase).to eq(actual_state), "At line number #{line_num}\nExpected: #{state}\nGot: #{actual_location}"
  end
end

Then(/^the result will display "([^"]*)" within the city \- using "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |expected_job, state, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  WaitUtility.waitUntillTableSteadied
  line_num = 0

  test_support = TestSupport.new
  actual_results = test_support.get_values_of_2col_for_pages("Job Name", "Location", page_num)
  p "***** Wait .... Checking the results ****"

  actual_results.each do |actual_result|
    actual_result = actual_result.split(";")
    actual_job = actual_result[0]
    actual_location = actual_result[1]
    line_num +=1
    fail "At line number #{line_num}\nExpected: #{expected_job}\n Got: #{actual_job}" unless actual_job.upcase.include? expected_job.upcase
    
    expect(actual_location.include? @city).to eq(true), "At line number #{line_num}\nExpected: #{@city}\nGot: #{actual_location}"
    actual_state = actual_location.split(",")[1]
    actual_state = actual_state.strip.upcase unless actual_state.nil? 
    expect(state.include? actual_state).to eq(true), "At line number #{line_num}\nExpected: #{@city} be within #{state}\nGot: #{actual_location}"
  end
end

