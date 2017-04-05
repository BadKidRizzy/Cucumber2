
# select -------------------
When(/^the user select Agriculture, Agriculture Operations and Related Sciences$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchMajorsPage.resetStudy_element.click
  @page_object.searchMajorsPage.agriculture_element.click
end

When(/^the user select Biological and Biomedical Sciences$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchMajorsPage.resetStudy_element.click
  @page_object.searchMajorsPage.biological_element.click
end

When(/^the user select Computer and Information Sciences and Support Services$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchMajorsPage.resetStudy_element.click
  @page_object.searchMajorsPage.computer_element.click
end

When(/^the user select Engineering$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchMajorsPage.resetStudy_element.click
  @page_object.searchMajorsPage.engineering_element.click
end

When(/^the user select Engineering Technologies and Engineering\-related Fields$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchMajorsPage.resetStudy_element.click
  @page_object.searchMajorsPage.engineeringTechnology_element.click
end

When(/^the user select Health Professions and Related Programs$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchMajorsPage.resetStudy_element.click
  @page_object.searchMajorsPage.health_element.click
end

When(/^the user select Mathematics and Statistics$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchMajorsPage.resetStudy_element.click
  @page_object.searchMajorsPage.mathematics_element.click
end

When(/^the user select Multi\/Interdisciplinary Studies$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchMajorsPage.resetStudy_element.click
  @page_object.searchMajorsPage.interdisciplinary_element.click
end

When(/^the user select Natural Resources and Conservation$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchMajorsPage.resetStudy_element.click
  @page_object.searchMajorsPage.natural_element.click
end

When(/^the user select Physical Sciences$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchMajorsPage.resetStudy_element.click
  @page_object.searchMajorsPage.physical_element.click
end

When(/^the user select Science Technologies\/Technicians$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchMajorsPage.resetStudy_element.click
  @page_object.searchMajorsPage.science_element.click
end

# selected ------------------
Then(/^the Agriculture, Agriculture Operations and Related Sciences filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \nAgriculture, Agriculture Operations and Related Sciences"

  expect(@page_object.searchMajorsPage.agriculture_checked?).to be(true), "#{error_msg} filter expected to be checked."
end

Then(/^the Biological and Biomedical Sciences filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \nBiological and Biomedical Sciences"

  expect(@page_object.searchMajorsPage.biological_checked?).to be(true), "#{error_msg} filter expected to be checked."
end

Then(/^the Computer and Information Sciences and Support Services filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \nComputer and Information Sciences and Support Services"

  expect(@page_object.searchMajorsPage.computer_checked?).to be(true), "#{error_msg} filter expected to be checked."
end

Then(/^the Engineering filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \nEngineering"

  expect(@page_object.searchMajorsPage.engineering_checked?).to be(true), "#{error_msg} filter expected to be checked."
end

Then(/^the Engineering Technologies and Engineering\-related Fields filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \nEngineering Technologies and Engineering\-related Fields"

  expect(@page_object.searchMajorsPage.engineeringTechnology_checked?).to be(true), "#{error_msg} filter expected to be checked."
end

Then(/^the Health Professions and Related Programs filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \nHealth Professions and Related Programs"

  expect(@page_object.searchMajorsPage.health_checked?).to be(true), "#{error_msg} filter expected to be checked."
end

Then(/^the Mathematics and Statistics filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \nMathematics and Statistics"

  expect(@page_object.searchMajorsPage.mathematics_checked?).to be(true), "#{error_msg} filter expected to be checked."
end

Then(/^the Multi\/Interdisciplinary Studies filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \nMulti\/Interdisciplinary Studies"

  expect(@page_object.searchMajorsPage.interdisciplinary_checked?).to be(true), "#{error_msg} filter expected to be checked."
end

Then(/^the Natural Resources and Conservation filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \n Natural Resources and Conservation"

  expect(@page_object.searchMajorsPage.natural_checked?).to be(true), "#{error_msg} filter expected to be checked."
end

Then(/^the Physical Sciences filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \nPhysical Sciences"

  expect(@page_object.searchMajorsPage.physical_checked?).to be(true), "#{error_msg} filter expected to be checked."
end

Then(/^the Science Technologies\/Technicians filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \nScience Technologies Technicians"

  expect(@page_object.searchMajorsPage.science_checked?).to be(true), "#{error_msg} filter expected to be checked."
end


# reset ------------------
When(/^the user select the area of study reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchMajorsPage.resetStudy_element.click
  @page_object.searchRelated.resetEles_elements[0].click
end


# unchecked ---------------
Then(/^all area of study filters should be unchecked by default$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \nAgriculture, Agriculture Operations and Related Sciences"
  expect(@page_object.searchMajorsPage.agriculture_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \nBiological and Biomedical Sciences"
  expect(@page_object.searchMajorsPage.biological_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \nComputer and Information Sciences and Support Services"
  expect(@page_object.searchMajorsPage.computer_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \nEngineering"
  expect(@page_object.searchMajorsPage.engineering_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \nEngineering Technologies and Engineering\-related Fields"
  expect(@page_object.searchMajorsPage.engineeringTechnology_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \nHealth Professions and Related Programs"
  expect(@page_object.searchMajorsPage.health_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \nMathematics and Statistics"
  expect(@page_object.searchMajorsPage.mathematics_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \nMulti\/Interdisciplinary Studies"
  expect(@page_object.searchMajorsPage.interdisciplinary_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \n Natural Resources and Conservation"
  expect(@page_object.searchMajorsPage.natural_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \nPhysical Sciences"
  expect(@page_object.searchMajorsPage.physical_checked?).to be(false), "#{error_msg} filter expected to be checked."


  error_msg = "Note: \nScience Technologies Technicians"
  expect(@page_object.searchMajorsPage.science_checked?).to be(false), "#{error_msg} filter expected to be checked."
end

Then(/^all area of study filters should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \nAgriculture, Agriculture Operations and Related Sciences"
  expect(@page_object.searchMajorsPage.agriculture_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \nBiological and Biomedical Sciences"
  expect(@page_object.searchMajorsPage.biological_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \nComputer and Information Sciences and Support Services"
  expect(@page_object.searchMajorsPage.computer_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \nEngineering"
  expect(@page_object.searchMajorsPage.engineering_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \nEngineering Technologies and Engineering\-related Fields"
  expect(@page_object.searchMajorsPage.engineeringTechnology_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \nHealth Professions and Related Programs"
  expect(@page_object.searchMajorsPage.health_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \nMathematics and Statistics"
  expect(@page_object.searchMajorsPage.mathematics_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \nMulti\/Interdisciplinary Studies"
  expect(@page_object.searchMajorsPage.interdisciplinary_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \n Natural Resources and Conservation"
  expect(@page_object.searchMajorsPage.natural_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \nPhysical Sciences"
  expect(@page_object.searchMajorsPage.physical_checked?).to be(false), "#{error_msg} filter expected to be checked."


  error_msg = "Note: \nScience Technologies Technicians"
  expect(@page_object.searchMajorsPage.science_checked?).to be(false), "#{error_msg} filter expected to be checked."
end

Then(/^the system will display the below major name for the selected area of study$/) do |table|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  expected_result = []

  test_support = TestSupport.new
  actual_result = test_support.get_values_of_2col_for_pages(1, 3)
  
  # p expected_result = expected_result.strip.split("\n")
  table.rows.each do |major, school|
    expected_result = expected_result + [major + ";" + school]
end

  expected = expected_result - actual_result
  actual = actual_result - expected_result

  error_msg1 = "Expected: #{expected_result}\n\nGot: #{actual_result} \n\n"
  error_msg2 = "It was looking for: \n#{expected.sort} \nfound:\n#{actual.sort} "
  fail error_msg1 + error_msg2 unless expected.empty? && actual.empty?
end

# ------------- display

Then(/^the system will display the "([^"]*)" for the selected area of study$/) do |expected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table_element = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table_element, 1, expected_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: The system should display #{expected_name} for selected area of study. \n result(s): \n #{body}"
  end
end

Then(/^the system will not display the "([^"]*)" for the selected area of study$/) do |expected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, expected_name)
  
  if result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: The system should not display #{expected_name} for selected area of study.\n result(s): \n #{body}"
  end
end



