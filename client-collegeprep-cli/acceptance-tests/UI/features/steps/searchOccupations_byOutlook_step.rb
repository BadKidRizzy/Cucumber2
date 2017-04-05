When(/^the user select "([^"]*)" from outlook$/) do |selected_stems|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  selected_stems = selected_stems.split(',')

  selected_stems.each do |selected_stem|
  
    case selected_stem.downcase.strip
    when "green job"
      @page_object.searchOccupationsPage.greenJob_element.click
    when "new and emerging"
      @page_object.searchOccupationsPage.emerging_element.click
    when "numerous openings"
      @page_object.searchOccupationsPage.numerous_element.click
    when "rapid growth"
      @page_object.searchOccupationsPage.rapid_element.click
    else
      fail "Please define #{selected_stem} in your code"
    end

  end
end

When(/^the user just select "([^"]*)" from outlook$/) do |selected_stem|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchOccupationsPage.outlookReset_element.click
  @page_object.searchRelated.resetEles_elements[4].click
  case selected_stem.downcase
  when "green job"
    @page_object.searchOccupationsPage.greenJob_element.click
  when "new and emerging"
    @page_object.searchOccupationsPage.emerging_element.click
  when "numerous openings"
    @page_object.searchOccupationsPage.numerous_element.click
  when "rapid growth"
    @page_object.searchOccupationsPage.rapid_element.click
  else
    fail "Please define #{selected_stem} in your code"
  end
end

When(/^the user select everything but "([^"]*)" from outlook$/) do |not_selected_stem|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  selected_stems = ["green job", "new and emerging", "numerous openings", "rapid growth"]
  
  not_selected_stem = not_selected_stem.split(',')
  not_selected_stem = not_selected_stem.map(&:strip).map(&:downcase)
  
  # selected_stems = selected_stems - [not_selected_stem.downcase.strip]
  selected_stems = selected_stems - not_selected_stem
  # @page_object.searchOccupationsPage.outlookReset_element.click
  @page_object.searchRelated.resetEles_elements[4].click

  selected_stems.each  do |selected_stem|
    
    case selected_stem
    when "green job"
      @page_object.searchOccupationsPage.greenJob_element.click
    when "new and emerging"
      @page_object.searchOccupationsPage.emerging_element.click
    when "numerous openings"
      @page_object.searchOccupationsPage.numerous_element.click
    when "rapid growth"
      @page_object.searchOccupationsPage.rapid_element.click
    else
      fail "Please define #{selected_stem} in your code"
    end

  end

end

When(/^the user select the outlook reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchOccupationsPage.outlookReset_element.click
  @page_object.searchRelated.resetEles_elements[4].click
end

# selected -----------

Then(/^the "([^"]*)" filter would be selected from outlook$/) do |selected_stem|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  case selected_stem.downcase
  when "green job"
    actual_result = @page_object.searchOccupationsPage.greenJob_checked?
  when "new and emerging"
    actual_result = @page_object.searchOccupationsPage.emerging_checked?
  when "numerous openings"
    actual_result = @page_object.searchOccupationsPage.numerous_checked?
  when "rapid growth"
    actual_result = @page_object.searchOccupationsPage.rapid_checked?
  else
    fail "Please define #{selected_stem} in your code"
  end
  expect(actual_result).to be(true), "The #{selected_stem} filter expected to be checked."
end

Then(/^the outlook filters should be unselected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  selected_stems = ["green job", "new and emerging", "numerous openings", "rapid growth"]
  selected_stems.each  do |selected_stem|
    
    case selected_stem.downcase
    when "green job"
      actual_result = @page_object.searchOccupationsPage.greenJob_checked?
    when "new and emerging"
      actual_result = @page_object.searchOccupationsPage.emerging_checked?
    when "numerous openings"
      actual_result = @page_object.searchOccupationsPage.numerous_checked?
    when "rapid growth"
      actual_result = @page_object.searchOccupationsPage.rapid_checked?
    else
    fail "Please define #{selected_stem} in your code"
    end
    expect(actual_result).to be(false), "The #{selected_stem} filter expected to be checked."
  end
end

#display -------------------
Then(/^the system will display the below occupations name for the selected outlook$/) do |expected_result|
  expected_result = expected_result.strip.split("\n")

  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  test_support = TestSupport.new
  actual_result = test_support.get_values_col_for_pages(1)

  expected = expected_result - actual_result
  actual = actual_result - expected_result

  error_msg1 = "Expected: #{expected_result}\n\nGot: #{actual_result} \n\n"
  error_msg2 = "It was looking for: \n#{expected.sort} \nfound:\n#{actual.sort} "
  fail error_msg1 + error_msg2 unless expected.empty? && actual.empty?
end

Then(/^the result will just display the "([^"]*)" for the selected outlook$/) do |expected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table_element = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table_element, 1, expected_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: The system should display #{expected_name} for selected outlook. \n result(s): \n #{body}"
  end
end


Then(/^the result will not display the "([^"]*)" for the selected outlook$/) do |expected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, expected_name)
  
  if result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: The system should not display #{expected_name} for selected outlook.\n result(s): \n #{body}"
  end
end

Then(/^the "([^"]*)" for the selected outlook will display at the top of the search result$/) do |expected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table_element = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table_element, 1, expected_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: The system should display #{expected_name} for selected outlook. \n result(s): \n #{body}"
  end
end
