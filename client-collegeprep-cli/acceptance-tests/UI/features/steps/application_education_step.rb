Then(/^the system will display below information under Education section$/) do |table|
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

When(/^the user enter the education data based on below info$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  @table_hash = get_table_hash(table)
  
  @page_object.applyPage.nameEdu = @table_hash["name"]
  @page_object.applyPage.subjectEdu = @table_hash["subject"]
  @page_object.applyPage.descriptionEdu = @table_hash["description"]
  @page_object.applyPage.scoreEdu = @table_hash["score"]

  @page_object.applyPage.startDate_element.click
  enter_date(@table_hash["start date"], "start")

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.endDate_element.click
  enter_date(@table_hash["end date"], "end")

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.graduationDate_element.click
  enter_date(@table_hash["graduation date"], "grad")
end

Then(/^the user will lose the education data if navigate to any page before saving the data$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.nextPage_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.previousPage_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  expect(@page_object.applyPage.nameEdu).to eq("")
  expect(@page_object.applyPage.subjectEdu).to eq("")
  expect(@page_object.applyPage.descriptionEdu).to eq("") 
  expect(@page_object.applyPage.scoreEdu).to eq("")

  expect(@page_object.applyPage.startDate).to eq("")
  expect(@page_object.applyPage.endDate).to eq("")
  expect(@page_object.applyPage.graduationDate).to eq("") 
end

Then(/^the system will save and display the education data and display the below info if the user navigate to any page and return$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.nextPage_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.previousPage_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  actual_results = @page_object.applyPage.saveTable.downcase

  @table_hash = get_table_hash(table)
  # table_hash = @table_hash.values - [@table_hash["description"]] - [@table_hash["start date"]] - [@table_hash["end date"]]

  @table_hash.each do |key, value|
    expect(actual_results.include? value.downcase).to eq(true), "It was looking for: #{value}\n Found: #{actual_results},\n it could not find expected data."
    expect(actual_results.include? key).to eq(true), "It was looking for table headers: #{key}\n Found: #{actual_results},\n it could not find expected data."
  end
end

Then(/^the education data will be displayed in edit mode$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  
  @table_hash = get_table_hash(table)

  expect(@page_object.applyPage.nameEdu).to eq(@table_hash["name"])
  expect(@page_object.applyPage.subjectEdu).to eq(@table_hash["subject"])
  expect(@page_object.applyPage.descriptionEdu).to eq(@table_hash["description"])
  expect(@page_object.applyPage.scoreEdu).to eq(@table_hash["score"])

  expect(@page_object.applyPage.startDate).to eq(@table_hash["start date"]), "For start date:\nexpected: #{@table_hash["start date"]}\ngot: #{@page_object.applyPage.startDate}"
  expect(@page_object.applyPage.endDate).to eq(@table_hash["end date"]), "For end date:\nexpected: #{@table_hash["end date"]}\ngot: #{@page_object.applyPage.endDate}"
  expect(@page_object.applyPage.graduationDate).to eq(@table_hash["graduation date"]), "For graduation date:\nexpected: #{@table_hash["graduation date"]}\ngot :#{@page_object.applyPage.graduationDate}"
end

When(/^the user edit the education data based on below info$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  @table_hash = get_table_hash(table)
  
  @page_object.applyPage.nameEdu = @table_hash["name"]
  @page_object.applyPage.subjectEdu = @table_hash["subject"]
  @page_object.applyPage.descriptionEdu = @table_hash["description"]
  @page_object.applyPage.scoreEdu = @table_hash["score"]

  @page_object.applyPage.startDate_element.click
  enter_date(@table_hash["start date"], "start")

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.endDate_element.click
  enter_date(@table_hash["end date"], "end")

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.graduationDate_element.click
  enter_date(@table_hash["graduation date"], "grad")
end

Then(/^the system will save and display the new education data$/) do |table|
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  @page_object.applyPage.save_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  actual_results = @page_object.applyPage.saveTable.downcase

  @table_hash = get_table_hash(table)

  @table_hash.each do |key, value|
    expect(actual_results.include? value.downcase).to eq(true), "It was looking for: #{value}\n Found: #{actual_results},\n it could not find expected data."
    expect(actual_results.include? key).to eq(true), "It was looking for table headers: #{key}\n Found: #{actual_results},\n it could not find expected data."
  end
end

Then(/^the education data has been deleted$/) do
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

Then(/^the user delete all Education data record$/) do
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
  current_year = Time.new.year
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


