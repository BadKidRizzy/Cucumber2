When(/^the user select "([^"]*)" from STEM discipline$/) do |selected_stems|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  selected_stems = selected_stems.split(',')

  selected_stems.each do |selected_stem|
  
    case selected_stem.downcase.strip
    when "science"
      @page_object.searchOccupationsPage.science_element.click
    when "technology"
      @page_object.searchOccupationsPage.technology_element.click
    when "engineering"
      @page_object.searchOccupationsPage.engineering_element.click
    when "mathematics"
      @page_object.searchOccupationsPage.math_element.click
    when "multi-disciplinary"
      @page_object.searchOccupationsPage.multi_element.click
    else
      fail "Please define #{selected_stem} in your code"
    end

  end
end

When(/^the user just select "([^"]*)" from STEM discipline$/) do |selected_stem|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchOccupationsPage.stemReset_element.click
  @page_object.searchRelated.resetEles_elements[2].click
  case selected_stem.downcase
  when "science"
    @page_object.searchOccupationsPage.science_element.click
  when "technology"
    @page_object.searchOccupationsPage.technology_element.click
  when "engineering"
    @page_object.searchOccupationsPage.engineering_element.click
  when "mathematics"
    @page_object.searchOccupationsPage.math_element.click
  when "multi-disciplinary"
    @page_object.searchOccupationsPage.multi_element.click
    else
    fail "Please define #{selected_stem} in your code"
  end
end

When(/^the user select everything but "([^"]*)" from STEM discipline$/) do |not_selected_stem|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  selected_stems = %W[science technology engineering mathematics multi-disciplinary]
  
  selected_stems = selected_stems - [not_selected_stem.downcase.strip]
  # @page_object.searchOccupationsPage.stemReset_element.click
  @page_object.searchRelated.resetEles_elements[2].click

  selected_stems.each  do |selected_stem|
    
    case selected_stem
    when "science"
      @page_object.searchOccupationsPage.science_element.click
    when "technology"
      @page_object.searchOccupationsPage.technology_element.click
    when "engineering"
      @page_object.searchOccupationsPage.engineering_element.click
    when "mathematics"
      @page_object.searchOccupationsPage.math_element.click
    when "multi-disciplinary"
      @page_object.searchOccupationsPage.multi_element.click
      else
      fail "Please define #{selected_stem} in your code"
    end

  end

end

When(/^the user select the STEM reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchOccupationsPage.stemReset_element.click
  @page_object.searchRelated.resetEles_elements[2].click
end

# selected -----------

Then(/^the "([^"]*)" filter would be selected from STEM-discipline$/) do |selected_stem|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  case selected_stem.downcase
  when "science"
    actual_result = @page_object.searchOccupationsPage.science_checked?
  when "technology"
    actual_result = @page_object.searchOccupationsPage.technology_checked?
  when "engineering"
    actual_result = @page_object.searchOccupationsPage.engineering_checked?
  when "mathematics"
    actual_result = @page_object.searchOccupationsPage.math_checked?
  when "multi-disciplinary"
    actual_result = @page_object.searchOccupationsPage.multi_checked?
  else
    fail "Please define #{selected_stem} in your code"
  end
  expect(actual_result).to be(true), "The #{selected_stem} filter expected to be checked."
end

Then(/^the science, technology, engineering, mathematics, and multi\-disciplinary filters should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  selected_stems = %W[science technology engineering mathematics multi-disciplinary]
  selected_stems.each  do |selected_stem|
    
    case selected_stem.downcase
    when "science"
      actual_result = @page_object.searchOccupationsPage.science_checked?
    when "technology"
      actual_result = @page_object.searchOccupationsPage.technology_checked?
    when "engineering"
      actual_result = @page_object.searchOccupationsPage.engineering_checked?
    when "mathematics"
      actual_result = @page_object.searchOccupationsPage.math_checked?
    when "multi-disciplinary"
      actual_result = @page_object.searchOccupationsPage.multi_checked?
    else
    fail "Please define #{selected_stem} in your code"
    end
    expect(actual_result).to be(false), "The #{selected_stem} filter expected to be checked."
  end
end

#display -------------------
Then(/^the system will display the below occupations name for the selected STEM discipline$/) do |expected_result|
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

Then(/^the result will just display the "([^"]*)" for the selected STEM discipline$/) do |expected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table_element = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table_element, 1, expected_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: The system should display #{expected_name} for selected STEM discipline. \n result(s): \n #{body}"
  end
end


Then(/^the result will not display the "([^"]*)" for the selected STEM discipline$/) do |expected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, expected_name)
  
  if result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: The system should not display #{expected_name} for selected STEM discipline.\n result(s): \n #{body}"
  end
end
