When(/^the user select "([^"]*)" from preparation needed$/) do |selected_preparas|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  selected_preparas = selected_preparas.split(',')

  selected_preparas.each do |selected_prepara|
  
    case selected_prepara.downcase
    when "some preparation"
      @page_object.searchOccupationsPage.some_element.click
    when "medium preparation"
      @page_object.searchOccupationsPage.medium_element.click
    when "considerable preparation"
      @page_object.searchOccupationsPage.considerable_element.click
    else
      fail "Please define #{selected_prepara} in your code"
    end

  end
end

When(/^the user just select "([^"]*)" from preparation needed$/) do |selected_prepara|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchOccupationsPage.preparationReset_element.click
  @page_object.searchRelated.resetEles_elements[3].click
  case selected_prepara.downcase
  when "some preparation"
    @page_object.searchOccupationsPage.some_element.click
  when "medium preparation"
    @page_object.searchOccupationsPage.medium_element.click
  when "considerable preparation"
    @page_object.searchOccupationsPage.considerable_element.click
  else
    fail "Please define #{selected_prepara} in your code"
  end
end

When(/^the user select everything but "([^"]*)" from preparation needed$/) do |not_selected_prepara|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  selected_preparas = ["some preparation", "medium preparation", "considerable preparation"]
  
  selected_preparas = selected_preparas - [not_selected_prepara.downcase.strip]
  # @page_object.searchOccupationsPage.preparationReset_element.click
  @page_object.searchRelated.resetEles_elements[3].click

  selected_preparas.each  do |selected_prepara|
    
    case selected_prepara
    when "some preparation"
      @page_object.searchOccupationsPage.some_element.click
    when "medium preparation"
      @page_object.searchOccupationsPage.medium_element.click
    when "considerable preparation"
      @page_object.searchOccupationsPage.considerable_element.click
    else
      fail "Please define #{selected_prepara} in your code"
    end

  end

end

When(/^the user select the preparation needed reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchOccupationsPage.preparationReset_element.click
  @page_object.searchRelated.resetEles_elements[3].click
end

# # selected -----------

Then(/^the "([^"]*)" filter would be selected from preparation needed$/) do |selected_prepara|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
    
  case selected_prepara.downcase
  when "some preparation"
    actual_result = @page_object.searchOccupationsPage.somediv_element.class_name
  when "medium preparation"
    actual_result = @page_object.searchOccupationsPage.mediumdiv_element.class_name
  when "considerable preparation"
    actual_result = @page_object.searchOccupationsPage.considerablediv_element.class_name
  else
    fail "Please define #{selected_prepara} in your code"
  end
  
  expect(actual_result.include? "active").to be(true), "The #{selected_prepara} filter expected to be selected."
end

Then(/^the preparation needed filters should be unselected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  selected_preparas = ["some preparation", "medium preparation", "considerable preparation"]
  
  selected_preparas.each  do |selected_prepara|
    case selected_prepara
    when "some preparation"
      actual_result = @page_object.searchOccupationsPage.somediv_element.class_name
    when "medium preparation"
      actual_result = @page_object.searchOccupationsPage.mediumdiv_element.class_name
    when "considerable preparation"
      actual_result = @page_object.searchOccupationsPage.considerablediv_element.class_name
    else
      fail "Please define #{selected_prepara} in your code"
    end

    expect(actual_result.include? "active").to be(false), "The #{selected_prepara} filter expected to be unselected."
  end

end

# #display -------------------

Then(/^the system will display the below occupations name for the selected preparation needed$/) do |expected_result|
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

Then(/^the result will just display the "([^"]*)" for the selected preparation needed$/) do |expected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table_element = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table_element, 1, expected_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: The system should display #{expected_name} for selected preparation needed. \n result(s): \n #{body}"
  end
end


Then(/^the result will not display the "([^"]*)" for the selected preparation needed$/) do |expected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, expected_name)
  
  if result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: The system should not display #{expected_name} for selected preparation needed.\n result(s): \n #{body}"
  end
end

Then(/^the "([^"]*)" should display under the search bar$/) do |expected_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  result = @page_object.searchRelated.firstSelected_element.text
  expect(result.include? expected_name).to eq(true), "Expected: #{expected_name}\nGot: #{result} "
end
