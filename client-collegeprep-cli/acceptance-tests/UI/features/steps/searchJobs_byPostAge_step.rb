When(/^the user select "([^"]*)" from post date age$/) do |selected_stems|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  selected_stems = selected_stems.split(',')

  selected_stems.each do |selected_stem|
  
    case selected_stem.downcase.strip
    when "within 1 day"
      @page_object.searchJobsPage.oneDay_element.click
    when "last 3 days"
      @page_object.searchJobsPage.threeDay_element.click
    when "this week"
      @page_object.searchJobsPage.week_element.click
    when "this month"
      @page_object.searchJobsPage.month_element.click
    else
      fail "Please define #{selected_stem} in your code"
    end

  end
end

When(/^the user select the post date age reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchJobsPage.postReset_element.click
  @page_object.searchRelated.resetEles_elements[5].click
end

# # selected -----------

Then(/^the "([^"]*)" filter would be selected from post date age$/) do |selected_stem|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  case selected_stem.downcase
  when "within 1 day"
    actual_result = @page_object.searchJobsPage.oneDay_selected?
  when "last 3 days"
    actual_result = @page_object.searchJobsPage.threeDay_selected?
  when "this week"
    actual_result = @page_object.searchJobsPage.week_selected?
  when "this month"
    actual_result = @page_object.searchJobsPage.month_selected?
  else
    fail "Please define #{selected_stem} in your code"
  end
  expect(actual_result).to be(true), "The #{selected_stem} filter expected to be checked."
end

Then(/^the post date age filters should be unselected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  selected_stems = ["within 1 day", "last 3 days", "this week", "this month"]
  selected_stems.each  do |selected_stem|
    
    case selected_stem.downcase
    when "within 1 day"
      actual_result = @page_object.searchJobsPage.oneDay_selected?
    when "last 3 days"
      actual_result = @page_object.searchJobsPage.threeDay_selected?
    when "this week"
      actual_result = @page_object.searchJobsPage.week_selected?
    when "this month"
      actual_result = @page_object.searchJobsPage.month_selected?
    else
    fail "Please define #{selected_stem} in your code"
    end
    expect(actual_result).to be(false), "The #{selected_stem} filter expected to be checked."
  end
end

# #display -------------------
Then(/^the system will display the Jobs name that posted within 1 day \- check for "([^"]*)" page\(s\)$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  test_support = TestSupport.new
  actual_results = test_support.get_values_col_for_pages("Posted", page_num)
  row  = 0
  p "***** Wait .... Checking the results ****"
  actual_results.each do |actual_result|
    row +=1
    unless (actual_result.downcase == "a day ago") || (actual_result.downcase.include? "minutes ago") || (actual_result.downcase.include? "an hour ago")
      if actual_result.downcase.include? "hours ago" 
        actual_result_hour = actual_result.downcase.split(" ")[0]
        fail "At line number #{row}\nExpected: Within 1 Day\n Got:#{actual_result}" unless actual_result_hour.to_i <= 24
      else
        fail "At line number #{row}\nExpected: Within 1 Day\n Got:#{actual_result}"
      end
    end
  end

end

Then(/^the system will display the Jobs name that posted in last 3 days \- check for "([^"]*)" page\(s\)$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  test_support = TestSupport.new
  actual_results = test_support.get_values_col_for_pages("Posted", page_num)
  row  = 0
  p "***** Wait .... Checking the results ****"
  actual_results.each do |actual_result|
    row +=1
    unless (actual_result.downcase == "a day ago") || (actual_result.downcase.include? "minutes ago") || (actual_result.downcase.include? "an hour ago")
      if actual_result.downcase.include? "hours ago" 
        actual_result_hour = actual_result.downcase.split(" ")[0]
        fail "At line number #{row}\nExpected: Last 3 Days\n Got:#{actual_result}" unless actual_result_hour.to_i <= 24
      elsif actual_result.downcase.include? "days ago"
        actual_result_days = actual_result.downcase.split(" ")[0]
        fail "At line number #{row}\nExpected: Last 3 Days\n Got:#{actual_result}" unless actual_result_days.to_i <= 3
      else
        fail "At line number #{row}\nExpected: Last 3 Days\n Got:#{actual_result}"
      end
    end
  end

end

Then(/^the system will display the Jobs name that posted in this week \- check for "([^"]*)" page\(s\)$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  test_support = TestSupport.new
  actual_results = test_support.get_values_col_for_pages("Posted", page_num)
  row  = 0
  p "***** Wait .... Checking the results ****"
  actual_results.each do |actual_result|
    row +=1
    unless (actual_result.downcase == "a day ago") || (actual_result.downcase.include? "minutes ago") || (actual_result.downcase.include? "an hour ago")
      if actual_result.downcase.include? "hours ago" 
        actual_result_hour = actual_result.downcase.split(" ")[0]
        fail "At line number #{row}\nExpected: This Week \n Got:#{actual_result}" unless actual_result_hour.to_i <= 24
      elsif actual_result.downcase.include? "days ago"
        actual_result_days = actual_result.downcase.split(" ")[0]
        fail "At line number #{row}\nExpected: This Week\n Got:#{actual_result}" unless actual_result_days.to_i <= 7
      else
        fail "At line number #{row}\nExpected: This Week\n Got:#{actual_result}"
      end
    end
  end

end

Then(/^the system will display the Jobs name that posted in this month \- check for "([^"]*)" page\(s\)$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  test_support = TestSupport.new
  actual_results = test_support.get_values_col_for_pages("Posted", page_num)
  row  = 0
  p "***** Wait .... Checking the results ****"
  actual_results.each do |actual_result|
    row +=1
    unless (actual_result.downcase == "a day ago") || (actual_result.downcase.include? "minutes ago") || (actual_result.downcase.include? "an hour ago") || (actual_result.downcase.include? "a month ago")
      if actual_result.downcase.include? "hours ago" 
        actual_result_hour = actual_result.downcase.split(" ")[0]
        fail "At line number #{row}\nExpected: This Month\n Got:#{actual_result}" unless actual_result_hour.to_i <= 24
      elsif actual_result.downcase.include? "days ago"
        actual_result_days = actual_result.downcase.split(" ")[0]
        fail "At line number #{row}\nExpected: This Month\n Got:#{actual_result}" unless actual_result_days.to_i <= 31
      else
        fail "At line number #{row}\nExpected: This Month\n Got:#{actual_result}"
      end
    end
  end

end

Then(/^the result will display "([^"]*)" that posted within 1 day \- check for "([^"]*)" page\(s\)$/) do |expected_job, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  test_support = TestSupport.new
  actual_results = test_support.get_values_of_2col_for_pages("Job Name", "Posted", page_num)
  row  = 0
  p "***** Wait .... Checking the results ****"

  actual_results.each do |actual_result|
    actual_result = actual_result.split(";")
    actual_job = actual_result[0]
    actual_posted = actual_result[1]
    row +=1
    fail "At line number #{row}\nExpected: #{expected_job}\n Got: #{actual_job}" unless actual_job.upcase.include? expected_job.upcase

    unless (actual_posted.downcase == "a day ago") || (actual_posted.downcase.include? "minutes ago") || (actual_posted.downcase.include? "an hour ago")
      if actual_posted.downcase.include? "hours ago" 
        actual_result_hour = actual_posted.downcase.split(" ")[0]
        fail "At line number #{row}\nExpected: Within 1 Day\n Got:#{actual_result}" unless actual_result_hour.to_i <= 24
      else
        fail "At line number #{row}\nExpected: Within 1 Day\n Got:#{actual_result}"
      end
    end
  end

end

Then(/^the result will display "([^"]*)" that posted in last 3 days \- check for "([^"]*)" page\(s\)$/) do |expected_job, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  test_support = TestSupport.new
  actual_results = test_support.get_values_of_2col_for_pages("Job Name", "Posted", page_num)
  row  = 0
  p "***** Wait .... Checking the results ****"

  actual_results.each do |actual_result|
    actual_result = actual_result.split(";")
    actual_job = actual_result[0]
    actual_posted = actual_result[1]
    row +=1
    fail "At line number #{row}\nExpected: #{expected_job}\n Got: #{actual_job}" unless actual_job.upcase.include? expected_job.upcase

    unless (actual_posted.downcase == "a day ago") || (actual_posted.downcase.include? "minutes ago") || (actual_posted.downcase.include? "an hour ago")
      if actual_posted.downcase.include? "hours ago" 
        actual_result_hour = actual_posted.downcase.split(" ")[0]
        fail "At line number #{row}\nExpected: Last 3 Days\n Got:#{actual_result}" unless actual_result_hour.to_i <= 24
      elsif actual_posted.downcase.include? "days ago"
        actual_result_days = actual_posted.downcase.split(" ")[0]
        fail "At line number #{row}\nExpected: Last 3 Days\n Got:#{actual_result}" unless actual_result_days.to_i <= 3
      else
        fail "At line number #{row}\nExpected: Last 3 Days\n Got:#{actual_result}"
      end
    end
  end

end

Then(/^the result will display "([^"]*)" that posted in this week \- check for "([^"]*)" page\(s\)$/) do |expected_job, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  test_support = TestSupport.new
  actual_results = test_support.get_values_of_2col_for_pages("Job Name", "Posted", page_num)
  row  = 0
  p "***** Wait .... Checking the results ****"
  
  actual_results.each do |actual_result|
    actual_result = actual_result.split(";")
    actual_job = actual_result[0]
    actual_posted = actual_result[1]
    row +=1
    fail "At line number #{row}\nExpected: #{expected_job}\n Got: #{actual_job}" unless actual_job.upcase.include? expected_job.upcase

    unless (actual_posted.downcase == "a day ago") || (actual_posted.downcase.include? "minutes ago") || (actual_posted.downcase.include? "an hour ago")
      if actual_posted.downcase.include? "hours ago" 
        actual_result_hour = actual_posted.downcase.split(" ")[0]
        fail "At line number #{row}\nExpected: This Week\n Got:#{actual_result}" unless actual_result_hour.to_i <= 24
      elsif actual_posted.downcase.include? "days ago"
        actual_result_days = actual_posted.downcase.split(" ")[0]
        fail "At line number #{row}\nExpected: This Week\n Got:#{actual_result}" unless actual_result_days.to_i <= 7
      else
        fail "At line number #{row}\nExpected: This Week\n Got:#{actual_result}"
      end
    end
  end

end

Then(/^the result will display "([^"]*)" that posted in this month \- check for "([^"]*)" page\(s\)$/) do |expected_job, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  test_support = TestSupport.new
  actual_results = test_support.get_values_of_2col_for_pages("Job Name", "Posted", page_num)
  row  = 0
  p "***** Wait .... Checking the results ****"
  
  actual_results.each do |actual_result|
    actual_result = actual_result.split(";")
    actual_job = actual_result[0]
    actual_posted = actual_result[1]
    row +=1
    fail "At line number #{row}\nExpected: #{expected_job}\n Got: #{actual_job}" unless actual_job.upcase.include? expected_job.upcase

    unless (actual_posted.downcase == "a day ago") || (actual_posted.downcase.include? "minutes ago") || (actual_posted.downcase.include? "an hour ago") || (actual_posted.downcase.include? "a month ago")
      if actual_posted.downcase.include? "hours ago" 
        actual_result_hour = actual_posted.downcase.split(" ")[0]
        fail "At line number #{row}\nExpected: This Month\n Got:#{actual_result}" unless actual_result_hour.to_i <= 24
      elsif actual_posted.downcase.include? "days ago"
        actual_result_days = actual_posted.downcase.split(" ")[0]
        fail "At line number #{row}\nExpected: This Month\n Got:#{actual_result}" unless actual_result_days.to_i <= 31
      else
        fail "At line number #{row}\nExpected: This Month\n Got:#{actual_result}"
      end
    end
  end

end

