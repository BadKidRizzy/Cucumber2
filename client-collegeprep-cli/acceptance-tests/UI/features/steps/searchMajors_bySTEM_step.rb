
# select -------------------

When(/^the user select Science$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchMajorsPage.resetStudy_element.click
  @page_object.searchMajorsPage.stemScience_element.click
end

When(/^the user select Technology$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchMajorsPage.resetStudy_element.click
  @page_object.searchMajorsPage.technology_element.click
end

When(/^the user select Engineering from STEM disciplinary$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchMajorsPage.resetStudy_element.click
  @page_object.searchMajorsPage.stemEngineering_element.click
end

When(/^the user select Mathematics$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchMajorsPage.resetStudy_element.click
  @page_object.searchMajorsPage.stemMathematics_element.click
end

When(/^the user select Multi\-disciplinary$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchMajorsPage.resetStudy_element.click
  @page_object.searchMajorsPage.multiDiscilinary_element.click
end

# selected ------------------


Then(/^the Science filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \n Science"

  expect(@page_object.searchMajorsPage.stemScience_checked?).to be(true), "#{error_msg} filter expected to be checked."
end

Then(/^the Technology filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \n Technology"

  expect(@page_object.searchMajorsPage.technology_checked?).to be(true), "#{error_msg} filter expected to be checked."
end

Then(/^the Engineering from STEM disciplinary filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \n Engineering"

  expect(@page_object.searchMajorsPage.stemEngineering_checked?).to be(true), "#{error_msg} filter expected to be checked."
end

Then(/^the Mathematics filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \n Mathematics"

  expect(@page_object.searchMajorsPage.stemMathematics_checked?).to be(true), "#{error_msg} filter expected to be checked."
end

Then(/^the Multi\-disciplinary  filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \nMulti\-disciplinary"

  expect(@page_object.searchMajorsPage.multiDiscilinary_checked?).to be(true), "#{error_msg} filter expected to be checked."
end

# reset ------------------

When(/^the user select the STEM discipline reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchMajorsPage.stemReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click
end

#unchecked ---------------

Then(/^all STEM discipline filters should be unchecked by default$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \n Science"
  expect(@page_object.searchMajorsPage.stemScience_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \n Technology"
  expect(@page_object.searchMajorsPage.science_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \n Engineering"
  expect(@page_object.searchMajorsPage.stemEngineering_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \n Mathematics"
  expect(@page_object.searchMajorsPage.stemMathematics_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \nMulti\-disciplinary"
  expect(@page_object.searchMajorsPage.multiDiscilinary_checked?).to be(false), "#{error_msg} filter expected to be checked."
end

Then(/^all STEM discipline filters should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "Note: \n Science"
  expect(@page_object.searchMajorsPage.stemScience_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \n Technology"
  expect(@page_object.searchMajorsPage.science_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \n Engineering"
  expect(@page_object.searchMajorsPage.stemEngineering_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \n Mathematics"
  expect(@page_object.searchMajorsPage.stemMathematics_checked?).to be(false), "#{error_msg} filter expected to be checked."

  error_msg = "Note: \nMulti\-disciplinary"
  expect(@page_object.searchMajorsPage.multiDiscilinary_checked?).to be(false), "#{error_msg} filter expected to be checked."
end

# ------------- display
Then(/^the system will display the below major name for the selected STEM discipline$/) do |table|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  expected_result = []

  test_support = TestSupport.new
  actual_result = test_support.get_values_of_2col_for_pages(1, 3)
  
  table.rows.each do |major, school|
    expected_result = expected_result + [major + ";" + school]
  end

  expected = expected_result - actual_result
  actual = actual_result - expected_result

  error_msg1 = "Expected: #{expected_result}\n\nGot: #{actual_result} \n\n"
  error_msg2 = "It was looking for: \n#{expected.sort} \nfound:\n#{actual.sort} "
  fail error_msg1 + error_msg2 unless expected.empty? && actual.empty?
end

Then(/^the system will display the "([^"]*)" for the selected STEM discipline$/) do |expected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table_element = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table_element, 1, expected_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: The system should display #{expected_name} STEM discipline. \n result(s): \n #{body}"
  end
end

Then(/^the system will not display the "([^"]*)" for the selected STEM discipline$/) do |expected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, expected_name)
  
  if result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: The system should not display #{expected_name} for STEM discipline.\n result(s): \n #{body}"
  end
end

#------------ search
When(/^the user search for the majors by "([^"]*)"$/) do |search_name|
  search_by_major(search_name)
end

def search_by_major(search_name)
    unless search_name ==""
      WaitUtility.wait_untill_elements_size_steadied
      @page_object.searchRelated.searchBox =""
      @page_object.searchRelated.searchBox = search_name

      WaitUtility.wait_untill_elements_size_steadied
      @page_object.searchRelated.search_element.click
      WaitUtility.wait_untill_elements_size_steadied
    end
  end


