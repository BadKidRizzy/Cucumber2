When(/^the user select "([^"]*)" test unser Application Tests$/) do |test_name|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.testDrop_element.when_visible(TIME_OUT_LIMIT)

  @page_object.applyPage.testDrop = test_name
end

When(/^the user select "([^"]*)" subject unser Application Tests$/) do |test_name|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.subjectDrop_element.when_visible(TIME_OUT_LIMIT)

  @page_object.applyPage.subjectDrop = test_name
end

When(/^the user enter the Test data based on below info$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  @table_hash = get_table_hash(table)
  
  @page_object.applyPage.testDrop = @table_hash["Test"]
  WaitUtility.wait_untill_elements_size_steadied

  @page_object.applyPage.subjectDrop = @table_hash["Subject"]
  WaitUtility.wait_untill_elements_size_steadied

  @page_object.applyPage.courseDrop = @table_hash["Course"] if @page_object.applyPage.courseDrop_element.visible?
  WaitUtility.wait_untill_elements_size_steadied

  @page_object.applyPage.scoreTest = @table_hash["Score"]

  @page_object.applyPage.testDate_element.click
  enter_date(@table_hash["Test date"], "start")
end

When(/^the user edit the Test data based on below info$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  p @table_hash = get_table_hash(table)
  
  @page_object.applyPage.testDrop = @table_hash["Test"]
  WaitUtility.wait_untill_elements_size_steadied

  @page_object.applyPage.subjectDrop = @table_hash["Subject"]
  WaitUtility.wait_untill_elements_size_steadied

  @page_object.applyPage.courseDrop = @table_hash["Course"] if @page_object.applyPage.courseDrop_element.visible?
  WaitUtility.wait_untill_elements_size_steadied

  @page_object.applyPage.scoreTest = @table_hash["Score"]

  @page_object.applyPage.testDate_element.click
  enter_date(@table_hash["Test date"], "start")
  sleep 10
end

#display -------------------
Then(/^the user will have below options to choose under subject$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.testDrop_element.when_visible(TIME_OUT_LIMIT)
  expected_table = []

  actual_results = @page_object.applyPage.subjectDrop_options 
  table.rows.each do |key, value|
    expected_table = expected_table + [key]
  end
  expect(actual_results-expected_table).to eq(expected_table-actual_results), "expected: #{expected_table}\n got: #{actual_results}\n diff: #{actual_results-expected_table}\n#{expected_table-actual_results}"
end

Then(/^the user will have below options to choose under course$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.testDrop_element.when_visible(TIME_OUT_LIMIT)
  expected_table = []

  actual_results = @page_object.applyPage.courseDrop_options 
  table.rows.each do |key, value|
    expected_table = expected_table + [key]
  end
  # p expected_table
  expect(actual_results-expected_table).to eq(expected_table-actual_results), "expected: #{expected_table}\n got: #{actual_results}\n diff: #{actual_results-expected_table}\n#{expected_table-actual_results}"
end

Then(/^the system will display below information under Tests section$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  
  expect_data = []
  expect_data = table.rows.map{|x, y| x.strip}

  application_content = @page_object.applyPage.rightApplicationContent_element.text
  application_content = application_content.split("\n")
  application_content = application_content.map{|x| x.strip}

  expect_results = expect_data - application_content
  got_results = application_content - expect_data
  
  expect(got_results).to eq(expect_results), "expected: #{expect_data}\n     got:#{application_content}\n   diff:\n#{expect_results}\n#{got_results}"
end

Then(/^the user will lose the Test data if navigate to any page before saving the data$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.nextPage_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.previousPage_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  begin
    expect(@page_object.applyPage.testDrop).to eq("") 
  rescue Exception => e
    
  end
  expect(@page_object.applyPage.subjectDrop).to eq("") if @page_object.applyPage.subjectDrop_element.visible?
  expect(@page_object.applyPage.courseDrop).to eq("") if @page_object.applyPage.courseDrop_element.visible?

  expect(@page_object.applyPage.testDate).to eq("")
  expect(@page_object.applyPage.scoreTest).to eq("")
end

Then(/^the system will save the Test data and display the below info even the user navigate to any page and return$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.nextPage_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.previousPage_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  actual_results = @page_object.applyPage.saveTable

  @table_hash = get_table_hash(table)
  

  @table_hash.each do |key, value|
    expect(actual_results.include? value).to eq(true), "It was looking for: #{value}\n Found: #{actual_results},\n it could not find expected data."
    expect(actual_results.include? key).to eq(true), "It was looking for table headers: #{key}\n Found: #{actual_results},\n it could not find expected data."
  end
end

Then(/^the Test data will be displayed in edit mode$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  
  @table_hash = get_table_hash(table)

  begin
    expect(@page_object.applyPage.testDrop).to eq(@table_hash["Test"]) 
  rescue Exception => e
    
  end
  expect(@page_object.applyPage.subjectDrop).to eq(@table_hash["Subject"]) if @page_object.applyPage.subjectDrop_element.visible?
  expect(@page_object.applyPage.courseDrop).to eq(@table_hash["Course"]) if @page_object.applyPage.courseDrop_element.visible?

  expect(@page_object.applyPage.testDate).to eq(@table_hash["Test date"])
  expect(@page_object.applyPage.scoreTest).to eq(@table_hash["Score"])
end

Then(/^the system will save and display the new Test data$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  @page_object.applyPage.save_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  actual_results = @page_object.applyPage.saveTable

  @table_hash = get_table_hash(table)

  @table_hash.each do |key, value|
    expect(actual_results.include? value).to eq(true), "It was looking for: #{value}\n Found: #{actual_results},\n it could not find expected data."
    expect(actual_results.include? key).to eq(true), "It was looking for table headers: #{key}\n Found: #{actual_results},\n it could not find expected data."
  end
end

Then(/^the Test data has been deleted$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  begin
    @page_object.applyPage.saveTable
    result = true
  rescue Exception => e
    result = false
  end
  expect(result).to be(false)
end

Then(/^the user delete all Test data record$/) do
  result = true

  while result 
    begin
      WaitUtility.wait_untill_elements_size_steadied
      @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
      @page_object.applyPage.saveTable

      @page_object.applyPage.delete_element.when_visible(TIME_OUT_LIMIT).click
      result = true
    rescue Exception => e
      result = false
    end
  end
end

def get_table_hash(table)
  table_hash = {}
  table.rows.each do |key, value|
    table_hash[key] = value
  end
  return table_hash
end

def enter_date(date, option)
  WaitUtility.wait_untill_elements_size_steadied
  date = date.split("/")
  year = date[1].strip
  month = date[0].strip
  
# sleep 2
#   date_table_ele = @page_object.applyPage.dateTable_element
#   p date_table_ele.text
  set_year(year, option)
  set_month(month.to_i, option)
end

def set_month(month, option)
  WaitUtility.wait_untill_elements_size_steadied
  if option == "start"
      date_table_ele = @page_object.applyPage.dateTableStart_element
    elsif option == "end"
      date_table_ele = @page_object.applyPage.dateTableEnd_element
    elsif option == "grad"
      date_table_ele = @page_object.applyPage.dateTableGard_element
    end
  
  date_table_ele[1][month - 1].click if (1 <= month && month <= 3)
  date_table_ele[2][month - 4].click if (4 <= month && month <= 6)
  date_table_ele[3][month - 7].click if (7 <= month && month <= 9)
  date_table_ele[4][month - 10].click if (10 <= month && month <= 12)
end

def set_year(year, option)
  WaitUtility.wait_untill_elements_size_steadied
  # current_year = Time.new.year
  current_year = @page_object.applyPage.yearText_element.text
  current_year = current_year.to_i

  year_index = year.to_i - current_year
  index = year_index
  year_index = year_index * -1 if index < 0

  for i in 0..year_index-1
    if option == "start"
      @page_object.applyPage.yearRightStart_element.click if index > 0 
      @page_object.applyPage.yearLeftStart_element.click if index < 0 
    elsif option == "end"
      @page_object.applyPage.yearRightEnd_element.click if index > 0 
      @page_object.applyPage.yearLeftEnd_element.click if index < 0 
    elsif option == "grad"
      @page_object.applyPage.yearRightGrad_element.click if index > 0 
      @page_object.applyPage.yearLeftGrad_element.click if index < 0 
    end
  end

end


