Then(/^the system will display table header name$/) do |table|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  x = 0
  table_data = @page_object.searchSchoolsPage.searchResults_element
  
  table.rows.each  do |header_name, b|
    x +=1
    expect(table_data[0][x].text).to eq (header_name)
  end
end

Then(/^the system will display search filters$/) do |table|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  # filters_data = "Reset\nSchool Type\nPublic\nPrivate\nReset\nAward\nCertificate\nAssociate's\nBachelor's\nAdvanced\nReset\nTotal School Size\nSmall (less than 5,000)\nMedium (5,000 - 20,000)\nLarge (greater than 20,000)\nReset\nLocation\nRegion\nState\nZip\nReset\nTuition\n—\nReset\nCampus Setting\nCity\nSuburbuan\nTown\nRural\nReset\nSpecial Mission\nHBCU\nHispanic-Serving\nTribal\nReligious Affiliation\nSingle Sex : Male\nSingle Sex : Female"
  filters_data = @page_object.searchSchoolsPage.searchFilters_element.text
  filters_data = filters_data.split("\n")
  expected_results = []
  table.rows.each  do |expected_result, b|
    expected_results = expected_results + [expected_result]
  end
  expect(filters_data - expected_results).to eq (expected_results - filters_data)
end

When(/^the user sort by School Name$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  @page_object.searchSchoolsPage.searchResults_element[0]['School Name'].click
  WaitUtility.wait_untill_elements_size_steadied
end

When(/^the user sort by Location$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  @page_object.searchSchoolsPage.searchResults_element[0]['Location'].click
  WaitUtility.wait_untill_elements_size_steadied
end

When(/^the user sort by Tuition$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  @page_object.searchSchoolsPage.searchResults_element[0]['Tuition'].click
  WaitUtility.wait_untill_elements_size_steadied
end

When(/^the user sort by Undergrads$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  @page_object.searchSchoolsPage.searchResults_element[0]['Undergrads'].click
  WaitUtility.wait_untill_elements_size_steadied
end

When(/^the user sort by Acceptance$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)

  @page_object.searchSchoolsPage.searchResults_element[0]['Acceptance'].click
  WaitUtility.wait_untill_elements_size_steadied
end

Then(/^the system will display the School Name in ascending sort \- check just (\d+) pages$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  test_support = TestSupport.new
  col_name ="School Name"
  
  result = test_support.get_values_col_for_pages(col_name, page_num)

  error_msg = "The system did not display the #{col_name}'s results in ascending sort."
  expect(test_support.check_ascending_sort(result)).to be(true), "#{error_msg}\nExpected:\n#{result.sort}\nGot:\n#{result}"
end

Then(/^the system will display the School Name in descending sort \- check just (\d+) pages$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  test_support = TestSupport.new
  col_name ="School Name"
  
  result = test_support.get_values_col_for_pages(col_name, page_num)

  error_msg = "The system did not display the #{col_name}'s results in descending sort."
  expect(test_support.check_descending_sort(result)).to be(true), "#{error_msg}\nExpected:\n#{test_support.descending_sort(result)}\nGot:\n#{result}"
end

Then(/^the system will display the Acceptance in ascending sort \- check just (\d+) pages$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  test_support = TestSupport.new
  col_name ="Acceptance"
  
  result = test_support.get_values_col_for_pages(col_name, page_num)
  result = result.map(&:to_i)

  error_msg = "The system did not display the #{col_name}'s results in ascending sort."
  expect(test_support.check_ascending_sort(result)).to be(true), "#{error_msg}\nExpected:\n#{result.sort}\nGot:\n#{result}"
end

Then(/^the system will display the Acceptance in descending sort \- check just (\d+) pages$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  test_support = TestSupport.new
  col_name ="Acceptance"
  
  result = test_support.get_values_col_for_pages(col_name, page_num)
  result = result.map(&:to_i)

  error_msg = "The system did not display the #{col_name}'s results in descending sort."
  expect(test_support.check_descending_sort(result)).to be(true), "#{error_msg}\nExpected:\n#{test_support.descending_sort(result)}\nGot:\n#{result}"
end

Then(/^the system will display the Undergrads in ascending sort \- check just (\d+) pages$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  test_support = TestSupport.new
  col_name ="Undergrads"
  
  result = test_support.get_values_col_for_pages(col_name, page_num)
  result = result.map {|s| s.gsub(",", "")}
  result = result.map(&:to_i)

  error_msg = "The system did not display the #{col_name}'s results in ascending sort."
  expect(test_support.check_ascending_sort(result)).to be(true), "#{error_msg}\nExpected:\n#{result.sort}\nGot:\n#{result}"
end

Then(/^the system will display the Undergrads in descending sort \- check just (\d+) pages$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  test_support = TestSupport.new
  col_name ="Undergrads"
  
  result = test_support.get_values_col_for_pages(col_name, page_num)
  result = result.map {|s| s.gsub(",", "")}
  result = result.map(&:to_i)

  error_msg = "The system did not display the #{col_name}'s results in descending sort."
  expect(test_support.check_descending_sort(result)).to be(true), "#{error_msg}\nExpected:\n#{test_support.descending_sort(result)}\nGot:\n#{result}"
end

Then(/^the system will display the Tuition in ascending sort \- check just (\d+) pages$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  test_support = TestSupport.new
  col_name ="Tuition"
  
  result = test_support.get_values_col_for_pages(col_name, page_num)
  result = result.map {|s| s.gsub(",", "")}
  result = result.map {|s| s.gsub("$", "")}
  result = result.map(&:to_i)

  error_msg = "The system did not display the #{col_name}'s results in ascending sort."
  expect(test_support.check_ascending_sort(result)).to be(true), "#{error_msg}\nExpected:\n#{result.sort}\nGot:\n#{result}"
end

Then(/^the system will display the Tuition in descending sort \- check just (\d+) pages$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  test_support = TestSupport.new
  col_name ="Tuition"
  
  result = test_support.get_values_col_for_pages(col_name, page_num)
  result = result.map {|s| s.gsub(",", "")}
  result = result.map {|s| s.gsub("$", "")}
  result = result.map(&:to_i)

  error_msg = "The system did not display the #{col_name}'s results in descending sort."
  expect(test_support.check_descending_sort(result)).to be(true), "#{error_msg}\nExpected:\n#{test_support.descending_sort(result)}\nGot:\n#{result}"
end

Then(/^the system will display the Location in ascending sort \- check just (\d+) pages$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  test_support = TestSupport.new
  col_name ="Location"
  
  result = test_support.get_values_col_for_pages(col_name, page_num)
  result = result.map {|s| s.split(",")}

  error_msg = "The system did not display the #{col_name}'s results in ascending sort."
  expect(test_support.check_ascending_sort_array(result)).to be(true), "#{error_msg}\nExpected:\n#{test_support.ascending_sort_array(result)}\nGot:\n#{result}"
end

Then(/^the system will display the Location in descending sort \- check just (\d+) pages$/) do |page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  test_support = TestSupport.new
  col_name ="Location"
  
  result = test_support.get_values_col_for_pages(col_name, page_num)
  result = result.map {|s| s.split(",")}

  error_msg = "The system did not display the #{col_name}'s results in descending sort."
  expect(test_support.check_descending_sort_array(result)).to be(true), "#{error_msg}\nExpected:\n#{test_support.descending_sort_array(result)}\nGot:\n#{result}"
end

Then(/^the system should display at least one school "([^"]*)" that match for each search by$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^the user select the reset button$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  @page_object.searchRelated.allReset_element.click
end

Then(/^the system will reset School Type filters to default$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."

  expect(@page_object.searchSchoolsPage.public_checked?).to be(false) , "The Public #{error_msg}"
  expect(@page_object.searchSchoolsPage.private_checked?).to be(false) , "The Private #{error_msg}"
end

Then(/^the system will reset Award filters to default$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."

  expect(@page_object.searchSchoolsPage.certificate_checked?).to be(false) , "The certificate #{error_msg}"
  expect(@page_object.searchSchoolsPage.associate_checked?).to be(false) , "The associate #{error_msg}"
  expect(@page_object.searchSchoolsPage.bachelor_checked?).to be(false) , "The bachelor #{error_msg}"
  expect(@page_object.searchSchoolsPage.advanced_checked?).to be(false) , "The advanced #{error_msg}"
end

Then(/^the system will reset School Size filters to default$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."

  expect(@page_object.searchSchoolsPage.small_checked?).to be(false) , "The small #{error_msg}"
  expect(@page_object.searchSchoolsPage.medium_checked?).to be(false) , "The medium #{error_msg}"
  expect(@page_object.searchSchoolsPage.large_checked?).to be(false) , "The large #{error_msg}"
end

Then(/^the system will reset Location filters to default$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."

  expect(@page_object.searchSchoolsPage.region_selected?).to be(false) , "The region #{error_msg}"
  expect(@page_object.searchSchoolsPage.state_selected?).to be(false) , "The state #{error_msg}"
  expect(@page_object.searchSchoolsPage.zip_selected?).to be(false) , "The zip #{error_msg}"
end

Then(/^the system will reset Tuition filters to default$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  
  expect(@page_object.searchSchoolsPage.minimum).to eq(""), "The minimum filter expected to be empty."
  expect(@page_object.searchSchoolsPage.maximum).to eq(""), "The maximum filter expected to be empty."
end

Then(/^the system will reset Campus Setting filters to default$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."

  expect(@page_object.searchSchoolsPage.city_checked?).to be(false), "The city #{error_msg}"
  expect(@page_object.searchSchoolsPage.suburban_checked?).to be(false), "The suburban #{error_msg}"
  expect(@page_object.searchSchoolsPage.town_checked?).to be(false), "The town #{error_msg}"
  expect(@page_object.searchSchoolsPage.rural_checked?).to be(false), "The rural #{error_msg}"
end

Then(/^the system will reset Special Mission filters to default$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  error_msg = "filter expected to be unchecked."

  expect(@page_object.searchSchoolsPage.hbcu_checked?).to be(false), "The HBCU #{error_msg}"
  expect(@page_object.searchSchoolsPage.hispanic_checked?).to be(false), "The hispanic-serving #{error_msg}"
  expect(@page_object.searchSchoolsPage.tribal_checked?).to be(false), "The tribal #{error_msg}"
  expect(@page_object.searchSchoolsPage.religious_checked?).to be(false), "The religious affiliation #{error_msg}"
  expect(@page_object.searchSchoolsPage.male_checked?).to be(false), "The male #{error_msg}"
  expect(@page_object.searchSchoolsPage.female_checked?).to be(false), "The female #{error_msg}"
end

Then(/^the system will reset search box to default$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied

  expect(@page_object.searchRelated.searchBox).to eq(""), "The search box expected to be empty."
end

Then(/^the system will reset sort ascending and descending to default$/) do
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.wait_untill_elements_size_steadied
  error_msg = "sort should not be active after reset."

  fail "The School Name #{error_msg}" if @page_object.searchSchoolsPage.searchResults_element[0]['School Name'].attribute("class").include? "active"
  fail "The Location #{error_msg}" if @page_object.searchSchoolsPage.searchResults_element[0]['Location'].attribute("class").include? "active"
  fail "The Tuition #{error_msg}" if @page_object.searchSchoolsPage.searchResults_element[0]['Tuition'].attribute("class").include? "active"
  fail "The Undergrads #{error_msg}" if @page_object.searchSchoolsPage.searchResults_element[0]['Undergrads'].attribute("class").include? "active"
  fail "The Acceptance #{error_msg}" if @page_object.searchSchoolsPage.searchResults_element[0]['Acceptance'].attribute("class").include? "active"
end





