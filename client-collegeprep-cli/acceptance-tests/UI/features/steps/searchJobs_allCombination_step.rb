Then(/^the system will display the jobs that offer "([^"]*)" minimum salary within the job Category "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |salary, category_name, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_category(result, category_name, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary with Required Education "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |salary, required_education, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_required_education(result, required_education, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary in the "([^"]*)" that is the zip code \- check for "([^"]*)" page\(s\)$/) do |salary, location, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_zip_code(result, location, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary and the Employment "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |salary, employment_type, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_employment_type(result, employment_type, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary and posted within "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |salary, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that in the job category "([^"]*)" with Required Education "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |category_name, required_education, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_category(result, category_name, line_num)
    check_required_education(result, required_education, line_num)
  end
end

Then(/^the system will display the jobs that in the job category "([^"]*)" within the state \- using "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |category_name, state, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_category(result, category_name, line_num)
    check_state(result, state, line_num)
  end
end

Then(/^the system will display the jobs that in the job category "([^"]*)" and the Employment "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |category_name, employment_type, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_category(result, category_name, line_num)
    check_employment_type(result, employment_type, line_num)
  end
end

Then(/^the system will display the jobs that in the job category "([^"]*)" and posted in "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |category_name, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_category(result, category_name, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs with required education "([^"]*)" within the "([^"]*)" that is the zip code \- check for "([^"]*)" page\(s\)$/) do |required_education, location, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_required_education(result, required_education, line_num)
    check_zip_code(result, location, line_num)
  end
end

Then(/^the system will display the jobs with required education "([^"]*)" and the Employment "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |required_education, employment_type, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_required_education(result, required_education, line_num)
    check_employment_type(result, employment_type, line_num)
  end
end

Then(/^the system will display the jobs with required education "([^"]*)" that posted in "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |required_education, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_required_education(result, required_education, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs within the "([^"]*)" that is the zip code and and the Employment "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |location, employment_type, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_zip_code(result, location, line_num)
    check_employment_type(result, employment_type, line_num)
  end
end

Then(/^the system will display the jobs within the "([^"]*)" that is the zip code and that posted in "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |location, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_zip_code(result, location, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary and required "([^"]*)" within the job Category "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |salary, posted_date, category_name, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_required_education(result, required_education, line_num)
    check_category(result, category_name, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary and required "([^"]*)" and located at "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |salary, required_education, location, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_required_education(result, required_education, line_num)
    check_state(result, location, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary and required "([^"]*)" and offer "([^"]*)" job \- check for "([^"]*)" page\(s\)$/) do |salary, required_education, employment_type, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_required_education(result, required_education, line_num)
    check_employment_type(result, employment_type, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary and required "([^"]*)" post within "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |salary, required_education, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_required_education(result, required_education, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary, in "([^"]*)" job Category, located at "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |salary, category_name, location, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_category(result, category_name, line_num)
    check_state(result, location, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary, in "([^"]*)" job Category, offer "([^"]*)" job \- check for "([^"]*)" page\(s\)$/) do |salary, category_name, employment_type, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_category(result, category_name, line_num)
    check_employment_type(result, employment_type, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary, in "([^"]*)" job Category, posted "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |salary, category_name, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_category(result, category_name, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary, located at "([^"]*)", offer "([^"]*)" job \- check for "([^"]*)" page\(s\)$/) do |salary, location, employment_type, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_state(result, location, line_num)
    check_employment_type(result, employment_type, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary, located at "([^"]*)", posted "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |salary, location, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_state(result, location, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that required "([^"]*)", in "([^"]*)" job Category, located at "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |required_education, category_name, location, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_required_education(result, required_education, line_num)
    check_category(result, category_name, line_num)
    check_state(result, location, line_num)
  end
end

Then(/^the system will display the jobs that required "([^"]*)", in "([^"]*)" job Category, offer "([^"]*)" job \- check for "([^"]*)" page\(s\)$/) do |required_education, category_name, employment_type, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_required_education(result, required_education, line_num)
    check_category(result, category_name, line_num)
    check_employment_type(result, employment_type, line_num)
  end
end

Then(/^the system will display the jobs that required "([^"]*)", in "([^"]*)" job Category, posted "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |required_education, category_name, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_required_education(result, required_education, line_num)
    check_category(result, category_name, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that required "([^"]*)", located at "([^"]*)", offer "([^"]*)" job \- check for "([^"]*)" page\(s\)$/) do |required_education, location, employment_type, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_required_education(result, required_education, line_num)
    check_state(result, location, line_num)
    check_employment_type(result, employment_type, line_num)
  end
end

Then(/^the system will display the jobs that required "([^"]*)", located at "([^"]*)", posted "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |required_education, location, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_required_education(result, required_education, line_num)
    check_state(result, location, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary, required "([^"]*)", in "([^"]*)" job Category, located at "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |salary, required_education, category_name, location, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_required_education(result, required_education, line_num)
    check_category(result, category_name, line_num)
    check_state(result, location, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary, required "([^"]*)", in "([^"]*)" job Category, offer "([^"]*)" job \- check for "([^"]*)" page\(s\)$/) do |salary, required_education, category_name, employment_type, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_required_education(result, required_education, line_num)
    check_category(result, category_name, line_num)
    check_employment_type(result, employment_type, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary, required "([^"]*)", in "([^"]*)" job Category, posted "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |salary, required_education, category_name, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_required_education(result, required_education, line_num)
    check_category(result, category_name, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary, in "([^"]*)" job Category, located at "([^"]*)", offer "([^"]*)" job \- check for "([^"]*)" page\(s\)$/) do |salary, category_name, location, employment_type, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_category(result, category_name, line_num)
    check_state(result, location, line_num)
    check_employment_type(result, employment_type, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary, in "([^"]*)" job Category, located at "([^"]*)", posted "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |salary, category_name, location, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_category(result, category_name, line_num)
    check_state(result, location, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary, located at "([^"]*)", offer "([^"]*)" job, posted "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |salary, location, employment_type, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_state(result, location, line_num)
    check_employment_type(result, employment_type, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that required "([^"]*)", in "([^"]*)" job Category, located at "([^"]*)", offer "([^"]*)" job \- check for "([^"]*)" page\(s\)$/) do |required_education, category_name, location, employment_type, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_required_education(result, required_education, line_num)
    check_category(result, category_name, line_num)
    check_state(result, location, line_num)
    check_employment_type(result, employment_type, line_num)
  end
end

Then(/^the system will display the jobs that required "([^"]*)", in "([^"]*)" job Category, located at "([^"]*)", posted "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |required_education, category_name, location, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    ccheck_required_education(result, required_education, line_num)
    check_category(result, category_name, line_num)
    check_state(result, location, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that required "([^"]*)", located at "([^"]*)", offer "([^"]*)" job, posted "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |required_education, location, employment_type, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    ccheck_required_education(result, required_education, line_num)
    check_state(result, location, line_num)
    check_employment_type(result, employment_type, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that in "([^"]*)" job Category, located at "([^"]*)", offer "([^"]*)" job, posted "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |category_name, location, employment_type, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_category(result, category_name, line_num)
    check_state(result, location, line_num)
    check_employment_type(result, employment_type, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary, required "([^"]*)", in "([^"]*)" job Category, located at "([^"]*)", offer "([^"]*)" job \- check for "([^"]*)" page\(s\)$/) do |salary, required_education, category_name, location, employment_type, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_required_education(result, required_education, line_num)
    check_category(result, category_name, line_num)
    check_state(result, location, line_num)
    check_employment_type(result, employment_type, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary, required "([^"]*)", in "([^"]*)" job Category, located at "([^"]*)", posted "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |salary, required_education, category_name, location, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_required_education(result, required_education, line_num)
    check_category(result, category_name, line_num)
    check_state(result, location, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary, in "([^"]*)" job Category, located at "([^"]*)", offer "([^"]*)" job, posted "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |salary, category_name, arg3, employment_type, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_category(result, category_name, line_num)
    check_state(result, location, line_num)
    check_employment_type(result, employment_type, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that required "([^"]*)", in "([^"]*)" job Category, located at "([^"]*)", offer "([^"]*)" job, posted "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |required_education, category_name, location, employment_type, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_required_education(result, required_education, line_num)
    check_category(result, category_name, line_num)
    check_state(result, location, line_num)
    check_employment_type(result, employment_type, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary, required "([^"]*)", in "([^"]*)" job Category, located at "([^"]*)", offer "([^"]*)" job, posted "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |salary, required_education, category_name, location, employment_type, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_required_education(result, required_education, line_num)
    check_category(result, category_name, line_num)
    check_zip_code(result, location, line_num)
    check_employment_type(result, employment_type, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that offer "([^"]*)" minimum salary, offer "([^"]*)" job, posted "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |salary, employment_type, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_salary(result, salary, line_num)
    check_employment_type(result, employment_type, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that required "([^"]*)", offer "([^"]*)" job, posted "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |required_education, employment_type, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_required_education(result, required_education, line_num)
    check_employment_type(result, employment_type, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that in "([^"]*)" job Category, located at "([^"]*)", offer "([^"]*)" job \- check for "([^"]*)" page\(s\)$/) do |category_name, state, employment_type, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_category(result, category_name, line_num)
    check_state(result, state, line_num)
    check_employment_type(result, employment_type, line_num)
  end
end

Then(/^the system will display the jobs that in "([^"]*)" job Category, located at "([^"]*)", posted "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |category_name, state, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_category(result, category_name, line_num)
    check_state(result, state, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end

Then(/^the system will display the jobs that in "([^"]*)" job Category, offer "([^"]*)" job, posted "([^"]*)" \- check for "([^"]*)" page\(s\)$/) do |category_name, employment_type, posted_date, page_num|
  @page_object.searchRelated.searchResults_element.when_visible(TIME_OUT_LIMIT)
  WaitUtility.waitUntillTableSteadied
  line_num = 0
  table = DetailPageSupport.new
  results = table.get_all_job_related_data_from_record_and_detail_pages(page_num)

  p "***** Wait .... Checking the results ****"
  results.each do |result|
    line_num +=1
    check_category(result, category_name, line_num)
    check_employment_type(result, employment_type, line_num)
    check_posted_date_age(result, posted_date, line_num)
  end
end


#------------
    # check_salary(result, salary, line_num)
    # check_required_education(result, required_education, line_num)
    # check_category(result, category_name, line_num)
    # check_zip_code(result, location, line_num)
    # check_state(result, state, line_num)
    # check_employment_type(result, employment_type, line_num)
    # check_posted_date_age(result, posted_date, line_num)

def check_salary(result, salary, line_num)
  result_pay = result["pay"]
  result_pay =result_pay.downcase
  result_pay = result_pay.gsub("$", "").gsub("/year", "")
  result_pay = result_pay.gsub("k", "000").gsub(",","")
  if result_pay.include? "-"
    result_pay = result_pay.split("-")
    fail "At line number #{line_num}\n #{result}\nExpected: #{salary}\n within\nGot: #{result_pay}" unless salary.to_i <= result_pay[1].to_i
  else
    fail "At line number #{line_num}\n #{result}\nExpected: #{salary}\nless or equal to\nGot: #{result_pay}" unless salary.to_i <= result_pay.to_i
  end
end

def check_category(result, category_name, line_num)
  result_industry = result["industry"]

  fail "At line #{line_num} \n #{result}\nExpected: #{category_name}\n Got: #{result_industry}" unless (result_industry.upcase.include? category_name.upcase)
end

def check_required_education(result, required_education, line_num)
  result_education = result["education"]
  required_education = "2 Year Degree" if required_education.downcase == "associate's degree"
  required_education = "4 Year Degree" if required_education.downcase == "bachelor's degree"

  fail "At line #{line_num} \n #{result}\nExpected: #{required_education}\n Got: #{result_education}" unless (result_education.upcase == required_education.upcase)
end

def check_zip_code(result, location, line_num)
  result_location = result["location"]
  result_location = result_location.strip
  fail "At line #{line_num} \n #{result}\nExpected: #{location}\n Got: #{result_location}" unless (result_location.upcase == location.upcase) 
end

def check_state(result, state, line_num)
  result_location = result["location"]
  actual_state = result_location.split(",")[1]
  actual_state = actual_state.strip.upcase unless actual_state.nil?
  fail "At line #{line_num} \n #{result}\nExpected: #{state}\n Got: #{result_location}" unless (actual_state == state.upcase)  
end

def check_employment_type(result, employment_type, line_num)
  result_employment = result["employment"]
  # result_employment = result_employment.strip
  fail "At line #{line_num} \n #{result}\nExpected: #{employment_type}\n Got: #{result_employment}" unless (result_employment.upcase.include? employment_type.upcase) 
end

def check_posted_date_age(result, posted_date, line_num)
  case posted_date.downcase.strip
  when "within 1 day"
    check_posted_date_age_within_1_day(result, line_num)
  when "last 3 days"
    check_posted_date_age_last_3_days(result, line_num)
  when "this week"
    check_posted_date_age_in_this_week(result, line_num)
  when "this month"
    check_posted_date_age_in_this_month(result, line_num)
  else
    fail "Please define * #{selected_stem} * in your code"
  end
end

def check_posted_date_age_within_1_day(result, line_num)
  result_posted = result["posted"]
  unless (result_posted.downcase == "a day ago") || (result_posted.downcase.include? "minutes ago") || (result_posted.downcase.include? "an hour ago")
    if result_posted.downcase.include? "hours ago" 
      actual_result_hour = result_posted.downcase.split(" ")[0]
      fail "At line number #{line_num}\n #{result}\nExpected: Within 1 Day\n Got:#{result_posted}" unless actual_result_hour.to_i <= 24
    else
      fail "At line number #{line_num}\n #{result}\nExpected: Within 1 Day\n Got:#{result_posted}"
    end
  end
end

def check_posted_date_age_last_3_days(result, line_num)
  result_posted = result["posted"]
  unless (result_posted.downcase == "a day ago") || (result_posted.downcase.include? "minutes ago") || (result_posted.downcase.include? "an hour ago")
    if result_posted.downcase.include? "hours ago" 
      actual_result_hour = result_posted.downcase.split(" ")[0]
      fail "At line number #{line_num}\n #{result}\nExpected: Last 3 Days\n Got:#{result_posted}" unless actual_result_hour.to_i <= 24
    elsif result_posted.downcase.include? "days ago"
      actual_result_days = result_posted.downcase.split(" ")[0]
      fail "At line number #{line_num}\n #{result}\nExpected: Last 3 Days\n Got:#{result_posted}" unless actual_result_days.to_i <= 3
    else
      fail "At line number #{line_num}\n #{result}\nExpected: Last 3 Days\n Got:#{result_posted}"
    end
  end
end

def check_posted_date_age_in_this_week(result, line_num)
  result_posted = result["posted"]
  unless (result_posted.downcase == "a day ago") || (result_posted.downcase.include? "minutes ago") || (result_posted.downcase.include? "an hour ago")
    if result_posted.downcase.include? "hours ago" 
      actual_result_hour = result_posted.downcase.split(" ")[0]
      fail "At line number #{line_num}\n #{result}\nExpected: This Week \n Got:#{result_posted}" unless actual_result_hour.to_i <= 24
    elsif result_posted.downcase.include? "days ago"
      actual_result_days = result_posted.downcase.split(" ")[0]
      fail "At line number #{line_num}\n #{result}\nExpected: This Week\n Got:#{result_posted}" unless actual_result_days.to_i <= 7
    else
      fail "At line number #{line_num}\n #{result}\nExpected: This Week\n Got:#{result_posted}"
    end
  end
end

def check_posted_date_age_in_this_month(result, line_num)
  result_posted = result["posted"]
  unless (result_posted.downcase == "a day ago") || (result_posted.downcase.include? "minutes ago") || (result_posted.downcase.include? "an hour ago") || (result_posted.downcase.include? "a month ago")
    if result_posted.downcase.include? "hours ago" 
      actual_result_hour = result_posted.downcase.split(" ")[0]
      fail "At line number #{line_num}\n #{result}\nExpected: This Month\n Got:#{result_posted}" unless actual_result_hour.to_i <= 24
    elsif result_posted.downcase.include? "days ago"
      actual_result_days = result_posted.downcase.split(" ")[0]
      fail "At line number #{line_num}\n #{result}\nExpected: This Month\n Got:#{result_posted}" unless actual_result_days.to_i <= 31
    else
      fail "At line number #{line_num}\n #{result}\nExpected: This Month\n Got:#{result_posted}"
    end
  end
end




