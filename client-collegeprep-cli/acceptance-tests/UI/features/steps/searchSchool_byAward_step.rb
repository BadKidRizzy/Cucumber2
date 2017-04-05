Then(/^the user select certificate$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_award = "certificate"

  # @page_object.searchSchoolsPage.awardReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click
  @page_object.searchSchoolsPage.certificate_element.click
end

Then(/^the user select associate$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_award = "associate"

  # @page_object.searchSchoolsPage.awardReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click
  @page_object.searchSchoolsPage.associate_element.click
end

Then(/^the user select bachelor$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_award = "bachelor"

  # @page_object.searchSchoolsPage.awardReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click
  @page_object.searchSchoolsPage.bachelor_element.click
end

Then(/^the user select advanced$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  @selected_award = "advanced"

  # @page_object.searchSchoolsPage.awardReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click
  @page_object.searchSchoolsPage.advanced_element.click
end

# two selects -------------------
Then(/^the user select certificate and associate$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.awardReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click
  @page_object.searchSchoolsPage.certificate_element.click
  @page_object.searchSchoolsPage.associate_element.click
end

Then(/^the user select certificate and bachelor$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.awardReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click
  @page_object.searchSchoolsPage.certificate_element.click
  @page_object.searchSchoolsPage.bachelor_element.click
end

Then(/^the user select certificate and advanced$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.awardReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click
  @page_object.searchSchoolsPage.certificate_element.click
  @page_object.searchSchoolsPage.advanced_element.click
end

Then(/^the user select associate and bachelor$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.awardReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click
  @page_object.searchSchoolsPage.associate_element.click
  @page_object.searchSchoolsPage.bachelor_element.click
end

Then(/^the user select associate and advanced$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.awardReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click
  @page_object.searchSchoolsPage.associate_element.click
  @page_object.searchSchoolsPage.advanced_element.click
end

Then(/^the user select bachelor and advanced$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.awardReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click
  @page_object.searchSchoolsPage.bachelor_element.click
  @page_object.searchSchoolsPage.advanced_element.click
end

# three selects -------------------

When(/^the user select certificate, associate and bachelor$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.awardReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click
  @page_object.searchSchoolsPage.certificate_element.click
  @page_object.searchSchoolsPage.associate_element.click
  @page_object.searchSchoolsPage.bachelor_element.click
end

When(/^the user select certificate, associate and advanced$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.awardReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click
  @page_object.searchSchoolsPage.certificate_element.click
  @page_object.searchSchoolsPage.associate_element.click
  @page_object.searchSchoolsPage.advanced_element.click
end

When(/^the user select associate, bachelor and advanced$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.awardReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click
  @page_object.searchSchoolsPage.associate_element.click
  @page_object.searchSchoolsPage.bachelor_element.click
  @page_object.searchSchoolsPage.advanced_element.click
end

When(/^the user select certificate, bachelor and advanced$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  # @page_object.searchSchoolsPage.awardReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click

  @page_object.searchSchoolsPage.certificate_element.click
  @page_object.searchSchoolsPage.bachelor_element.click
  @page_object.searchSchoolsPage.advanced_element.click
end

When(/^the user select certificate, associate, bachelor and advanced$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  # @page_object.searchSchoolsPage.awardReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click

  @page_object.searchSchoolsPage.certificate_element.click
  @page_object.searchSchoolsPage.associate_element.click
  @page_object.searchSchoolsPage.bachelor_element.click
  @page_object.searchSchoolsPage.advanced_element.click
end
# selected -------------------
Then(/^the certificate filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be checked."

  expect(@page_object.searchSchoolsPage.certificate_checked?).to be(true), "The certificate #{error_msg}"
end

Then(/^the associate filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be checked."

  expect(@page_object.searchSchoolsPage.associate_checked?).to be(true), "The associate #{error_msg}"
end

Then(/^the bachelor filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be checked."

  expect(@page_object.searchSchoolsPage.bachelor_checked?).to be(true), "The bachelor #{error_msg}"
end

Then(/^the advanced filter would be selected$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be checked."

  expect(@page_object.searchSchoolsPage.advanced_checked?).to be(true), "The advanced #{error_msg}"
end

Then(/^the certificate, associate, bachelor, and advanced filter should be unchecked$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."

  expect(@page_object.searchSchoolsPage.certificate_checked?).to be(false) , "The certificate #{error_msg}"
  expect(@page_object.searchSchoolsPage.associate_checked?).to be(false) , "The associate #{error_msg}"
  expect(@page_object.searchSchoolsPage.bachelor_checked?).to be(false) , "The bachelor #{error_msg}"
  expect(@page_object.searchSchoolsPage.advanced_checked?).to be(false) , "The advanced #{error_msg}"
end

Then(/^the user select the award reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  # @page_object.searchSchoolsPage.awardReset_element.click
  @page_object.searchRelated.resetEles_elements[1].click
end
# display --------------------------------------------------
Then(/^the result will only show school\(s\) that offers certificate by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers certificate. The system should display it.\n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) that offers associate by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers associate. The system should display it. \n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) that offers bachelor by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers bachelor. The system should display it. \n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) that offers advanced by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers advanced. The system should display it. \n result(s): \n #{body}"
  end
end
#------------------
Then(/^the result will only show school\(s\) that offers certificate and associate by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers certificate or associate. The system should display it. \n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) that offers certificate and bachelor by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers certificate or bachelor. The system should display it.\n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) that offers certificate and advanced by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers certificate or advanced. The system should display it.\n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) that offers associate and bachelor by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers associate or bachelor. The system should display it.\n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) that offers associate and advanced by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers associate or advanced. The system should display it. \n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) that offers bachelor and advanced by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers bachelor or advanced. The system should display it. \n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) that offers certificate, associate and bachelor by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers certificate, associate or bachelor. The system should display it. \n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) that offers certificate, associate and advanced by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers certificate, associate or advanced. The system should display it. \n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) that offers associate, bachelor and advanced by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers associate, bachelor or advanced. The system should display it. \n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) that offers certificate, bachelor and advanced by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers certificate, bachelor or advanced. The system should display it. \n result(s): \n #{body}"
  end
end

Then(/^the result will only show school\(s\) that offers certificate, associate, bachelor and advanced by "([^"]*)"$/) do |result_name|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, result_name)
  
  unless result
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{result_name} offers certificate, associate, bachelor or advanced. The system should display it. \n result(s): \n #{body}"
  end
end

Given(/^the user search for "([^"]*)" of the university$/) do |search_name|
  @school_name = search_name
  search_by_name(search_name)
end

Then(/^the result will show school if the school offers "([^"]*)" degree$/) do |expected_result|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  table = @page_object.searchSchoolsPage.searchResults_element
  result = TableUtiity.colmun_case_cam(table, 1, @school_name)
  
  unless result.to_s.casecmp(expected_result ) == 0
    body = @page_object.searchSchoolsPage.searchResults_element.text
    fail "Expected: #{@school_name} offers #{@selected_award}. The system should display it.\n result(s): \n #{body}"
  end
end

