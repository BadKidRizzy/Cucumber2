Then(/^the system will display below information under Address section$/) do |table|
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

When(/^the user enter the address based on below info$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  @table_hash = get_table_hash(table)
  
  @page_object.applyPage.streetAddress = @table_hash["street address"]
  @page_object.applyPage.city = @table_hash["city"]
  @page_object.applyPage.state = @table_hash["state"]
  @page_object.applyPage.zip = @table_hash["zip code"]
end

Then(/^the user will lose the address if navigate to any page before saving the data$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.nextPage_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.previousPage_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  expect(@page_object.applyPage.streetAddress).to eq("")
  expect(@page_object.applyPage.city).to eq("")
  expect(@page_object.applyPage.state).to eq("") 
  expect(@page_object.applyPage.zip).to eq("")
end

Then(/^the system will save and display the address if the user navigate to any page and return$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.nextPage_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.previousPage_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  actual_results = @page_object.applyPage.saveTable

  @table_hash.values.each do |value|
    expect(actual_results.include? value).to eq(true), "It was looking for #{value} in\n #{actual_results},\n it could not find."
  end
end

When(/^the user select Edit action$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.edit_element.when_visible(TIME_OUT_LIMIT).click 
end

Then(/^the address will be displayed in edit mode$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  
  @table_hash = get_table_hash(table)

  expect(@page_object.applyPage.streetAddress).to eq(@table_hash["street address"])
  expect(@page_object.applyPage.city).to eq(@table_hash["city"])
  expect(@page_object.applyPage.state).to eq(@table_hash["state"]) 
  expect(@page_object.applyPage.zip).to eq(@table_hash["zip code"])
end

When(/^the user edit the address based on below info$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  @table_hash = get_table_hash(table)
  
  @page_object.applyPage.streetAddress = @table_hash["street address"]
  @page_object.applyPage.city = @table_hash["city"]
  @page_object.applyPage.state = @table_hash["state"]
  @page_object.applyPage.zip = @table_hash["zip code"]
end

Then(/^the system will save and display the new address$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  @page_object.applyPage.save_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  actual_results = @page_object.applyPage.saveTable

  @table_hash.values.each do |value|
    expect(actual_results.include? value).to eq(true), "It was looking for #{value} in\n  #{actual_results},\n it could not find."
  end
end

When(/^the user select Delete action$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  @page_object.applyPage.delete_element.when_visible(TIME_OUT_LIMIT).click
end

Then(/^the address has been deleted$/) do
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

Then(/^the user delete all Address data record$/) do
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
    table_hash[key.downcase] = value
  end
  return table_hash
end
