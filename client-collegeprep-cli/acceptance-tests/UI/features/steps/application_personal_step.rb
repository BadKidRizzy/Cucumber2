Then(/^the Save button would be disable$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  expect(@page_object.applyPage.save_element.disabled?).to eq(true), "The Save button expected to be disable"
end

Then(/^the Save button will be enable$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  expect(@page_object.applyPage.save_element.disabled?).to eq(false), "The Save button expected to be enable"
end

When(/^the user change the Personal info based on above info$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  if @table_hash["Gender"] == "M"
    @page_object.applyPage.male_element.click
  else
    @page_object.applyPage.female_element.click
  end
  # BROWSER.radio(:value => @table_hash["Gender"]).set

  @page_object.applyPage.ethnicity = @table_hash["Ethnicity"]
  @page_object.applyPage.race = @table_hash["Race"]
end

When(/^the user save the data$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  @page_object.applyPage.save_element.click
end

#---------------- display

Then(/^the system will save and display the personal info if the user navigate to any page and return$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.nextPage_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.previousPage_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  if @table_hash["Gender"] == "M"
    expect(@page_object.applyPage.male_selected?).to eq(true)
  else
    expect(@page_object.applyPage.female_selected?).to eq(true)
  end
  
  begin
    expect(@page_object.applyPage.race).to eq(@table_hash["Race"])

    expect(@page_object.applyPage.ethnicity).to eq(@table_hash["Ethnicity"])
    expect_results = true
  rescue Exception => e
    expect_results = false
  end
   expect(expect_results).to eq(true)
end

Then(/^the user will lose the personal info if navigate to any page before saving the data$/) do
  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.nextPage_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  @page_object.applyPage.previousPage_element.when_visible(TIME_OUT_LIMIT).click 

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  if @table_hash["Gender"] == "M"
    expect(@page_object.applyPage.male_selected?).to eq(false)
  else
    expect(@page_object.applyPage.female_selected?).to eq(false)
  end
  
  begin
    if @page_object.applyPage.race == "" || @page_object.applyPage.ethnicity == ""
      expect_results = false
    else
      expect_results = true
    end
  rescue Exception => e
    expect_results = false
  end
   expect(expect_results).to eq(false), "The race and ethnicity should be clear"
end

Then(/^the system will display below information under Personal section$/) do |table|
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

Then(/^the change will be reflected on profile information$/) do
  fail "If this is a valid scenario then we should write code for it"
end

Then(/^the user delete all Personal info record$/) do
   WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)
  
  
  if @page_object.applyPage.male_selected?
    @page_object.applyPage.female_element.click 
  elsif @page_object.applyPage.female_selected?
    @page_object.applyPage.male_element.click 
  end

  @page_object.applyPage.ethnicity = ""
  @page_object.applyPage.race = ""

  WaitUtility.wait_untill_elements_size_steadied
  @page_object.applyPage.applicationContent_element.when_visible(TIME_OUT_LIMIT)

  @page_object.applyPage.save_element.click
end
