Then(/^the system will display below information under Contact section$/) do |table|
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

When(/^the user enter the contact info based on below info$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  @table_hash = get_table_hash(table)
  
  @page_object.applyPage.name = @table_hash["name"]
  @page_object.applyPage.phone = @table_hash["phone"]
  @page_object.applyPage.email = @table_hash["email"]
  @page_object.applyPage.relation = @table_hash["relation"]
end

Then(/^the user will lose the contact info if navigate to any page before saving the data$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.nextPage_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.previousPage_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  expect(@page_object.applyPage.name).to eq("")
  expect(@page_object.applyPage.phone).to eq("")
  expect(@page_object.applyPage.email).to eq("") 
  expect(@page_object.applyPage.relation).to eq("")
end

Then(/^the system will save and display the contact info if the user navigate to any page and return$/) do
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

Then(/^the contact info will be displayed in edit mode$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  
  @table_hash = get_table_hash(table)

  expect(@page_object.applyPage.name).to eq(@table_hash["name"])
  expect(@page_object.applyPage.phone).to eq(@table_hash["phone"])
  expect(@page_object.applyPage.email).to eq(@table_hash["email"]) 
  expect(@page_object.applyPage.relation).to eq(@table_hash["relation"])
end

When(/^the user edit the contact info based on below info$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  @table_hash = get_table_hash(table)
  
  @page_object.applyPage.name = @table_hash["name"]
  @page_object.applyPage.phone = @table_hash["phone"]
  @page_object.applyPage.email = @table_hash["email"]
  @page_object.applyPage.relation = @table_hash["relation"]
end

Then(/^the system will save and display the new contact info$/) do
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

Then(/^the contact info has been deleted$/) do
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

Then(/^the user delete all Contact info record$/) do
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
