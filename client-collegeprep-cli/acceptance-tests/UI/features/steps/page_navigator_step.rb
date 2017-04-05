Given(/^the user on the Home Page$/) do
  @page_object = PageObjectHomeRelated.new(BROWSER)
  
  page_url = URLS + @page_object.homePage.page_url_value
  
  browser_page_url = BROWSER.url.split('?')[0]
  home_page_url = URLS + @page_object.homePage.page_url_value

  p "****** The expect  page url: #{home_page_url} ******"
  p "****** The current page url: #{browser_page_url} ******"

  unless home_page_url == browser_page_url
    BROWSER.goto page_url

    @page_object.menuBar.homeIcon_element.when_visible(TIME_OUT_LIMIT)
    @page_object.menuBar.homeIcon_element.click
  end
  WaitUtility.wait_untill_elements_size_steadied
end

Given(/^the user on the Login Page$/) do
  @page_object = PageObjectLoginRelated.new(BROWSER)
  
  page_url = URLS + @page_object.loginPage.page_url_value
  puts "****** The expect page url: #{page_url} ******"
   BROWSER.goto page_url
  puts "****** The current page url: #{BROWSER.url} ******"
  WaitUtility.wait_untill_elements_size_steadied
end

Given(/^the user on the SignUp Page$/) do
  # page_name = "SignUp Page"
  # @SignUp_page = Object.const_get(page_name.gsub(" ","")).new(BROWSER)
  @page_object = PageObjectLoginRelated.new(BROWSER)
  @SignUp_page = @page_object.signUpPage
  
  page_url = URLS + @SignUp_page.page_url_value
  puts "****** The expect page url: #{page_url} ******"
  BROWSER.goto page_url
  puts "****** The current page url: #{BROWSER.url} ******"
  WaitUtility.wait_untill_elements_size_steadied
end

Given(/^the user from Home Page navigate to Sign up Page$/) do
  @page_object = PageObjectLoginRelated.new(BROWSER)
  
  page_url = URLS + @page_object.homePage.page_url_value
  puts "****** The expect page url: #{page_url} ******"
  puts "****** The current page url: #{BROWSER.url} ******"
  
  BROWSER.goto page_url
  begin 
    @page_object.homePage.signup_element.when_visible(TIME_OUT_LIMIT)
    @page_object.homePage.signup_element.click
    # sleep 5
    WaitUtility.wait_untill_elements_size_steadied
  rescue Exception => e
    @page_object.loginDropDown.username_element.when_visible(TIME_OUT_LIMIT)
    @page_object.loginDropDown.username_element.click
  
    @page_object.loginDropDown.logOut_element.when_visible(TIME_OUT_LIMIT)
    @page_object.loginDropDown.logOut_element.click

    @page_object.homePage.signup_element.when_visible(TIME_OUT_LIMIT)
    @page_object.homePage.signup_element.click
    WaitUtility.wait_untill_elements_size_steadied
  end
end

Given(/^the user from Home Page navigate to Login Page$/) do
  @page_object = PageObjectLoginRelated.new(BROWSER)
  
  page_url = URLS + @page_object.homePage.page_url_value
  puts "****** The expect page url: #{page_url} ******"
  puts "****** The current page url: #{BROWSER.url} ******"

  BROWSER.goto page_url
  begin
    @page_object.homePage.login_element.when_visible(TIME_OUT_LIMIT)
    @page_object.homePage.login_element.click
    WaitUtility.wait_untill_elements_size_steadied
  rescue Exception => e
    @page_object.loginDropDown.username_element.when_visible(TIME_OUT_LIMIT)
    @page_object.loginDropDown.username_element.click
  
    @page_object.loginDropDown.logOut_element.when_visible(TIME_OUT_LIMIT)
    @page_object.loginDropDown.logOut_element.click

    @page_object.homePage.login_element.when_visible(TIME_OUT_LIMIT)
    @page_object.homePage.login_element.click
    WaitUtility.wait_untill_elements_size_steadied
  end
  
end

Given(/^the user from Home Page navigate to School search Page$/) do
  @page_object = PageObjectHomeRelated.new(BROWSER)
  
  page_url = URLS + @page_object.homePage.page_url_value
  
  browser_page_url = BROWSER.url.split('?')[0]
  search_page_url = URLS + @page_object.searchSchoolsPage.page_url_value

  p "****** The expect  page url: #{search_page_url} ******"
  p "****** The current page url: #{browser_page_url} ******"

  if search_page_url == browser_page_url
    @page_object.menuBar.search_element.click
    @page_object.searchRelated.allReset_element.click
  else
    BROWSER.goto page_url

    @page_object.menuBar.homeIcon_element.when_visible(TIME_OUT_LIMIT)
    @page_object.menuBar.homeIcon_element.click
    @page_object.menuBar.search_element.click

    @page_object.searchRelated.dropDownIcon_element.when_visible(TIME_OUT_LIMIT).click

    @page_object.searchRelated.schoolsDrop_element.when_visible(TIME_OUT_LIMIT).click
  end
  WaitUtility.wait_untill_elements_size_steadied 
end

Given(/^the user from Home Page navigate to Majors search Page$/) do
  @page_object = PageObjectHomeRelated.new(BROWSER)
  
  page_url = URLS + @page_object.homePage.page_url_value
  
  browser_page_url = BROWSER.url.split('?')[0]
  search_page_url = URLS + @page_object.searchMajorsPage.page_url_value

  p "****** The expect  page url: #{search_page_url} ******"
  p "****** The current page url: #{browser_page_url} ******"

  if search_page_url == browser_page_url
    @page_object.menuBar.search_element.click

    @page_object.searchRelated.dropDownIcon_element.when_visible(TIME_OUT_LIMIT).click

    @page_object.searchRelated.majorsDrop_element.when_visible(TIME_OUT_LIMIT).click
    @page_object.searchRelated.allReset_element.click
  else
    BROWSER.goto page_url

    @page_object.menuBar.homeIcon_element.when_visible(TIME_OUT_LIMIT)
    @page_object.menuBar.homeIcon_element.click
    @page_object.menuBar.search_element.click

    @page_object.searchRelated.dropDownIcon_element.when_visible(TIME_OUT_LIMIT).click

    @page_object.searchRelated.majorsDrop_element.when_visible(TIME_OUT_LIMIT).click
  end
  WaitUtility.wait_untill_elements_size_steadied
end

Given(/^the user from Home Page navigate to Occupations search Page$/) do
  @page_object = PageObjectHomeRelated.new(BROWSER)
  
  page_url = URLS + @page_object.homePage.page_url_value
  
  browser_page_url = BROWSER.url.split('?')[0]
  search_page_url = URLS + @page_object.searchOccupationsPage.page_url_value

  p "****** The expect  page url: #{search_page_url} ******"
  p "****** The current page url: #{browser_page_url} ******"

  if search_page_url == browser_page_url
    # @page_object.menuBar.search_element.click

    # @page_object.searchRelated.dropDownIcon_element.when_visible(TIME_OUT_LIMIT).click

    # @page_object.searchRelated.occupationsDrop_element.when_visible(TIME_OUT_LIMIT).click
    @page_object.searchRelated.allReset_element.click
  else
    BROWSER.goto page_url

    @page_object.menuBar.homeIcon_element.when_visible(TIME_OUT_LIMIT)
    @page_object.menuBar.homeIcon_element.click
    @page_object.menuBar.search_element.click

    @page_object.searchRelated.dropDownIcon_element.when_visible(TIME_OUT_LIMIT).click

    @page_object.searchRelated.occupationsDrop_element.when_visible(TIME_OUT_LIMIT).click
  end
  WaitUtility.wait_untill_elements_size_steadied 
end

Given(/^the user from Home Page navigate to Jobs search Page$/) do
  @page_object = PageObjectHomeRelated.new(BROWSER)
  
  page_url = URLS + @page_object.homePage.page_url_value
  
  browser_page_url = BROWSER.url.split('?')[0]
  search_page_url = URLS + @page_object.searchJobsPage.page_url_value

  p "****** The expect  page url: #{search_page_url} ******"
  p "****** The current page url: #{browser_page_url} ******"

  if search_page_url == browser_page_url
    @page_object.searchRelated.allReset_element.click
  else
    BROWSER.goto page_url

    @page_object.menuBar.homeIcon_element.when_visible(TIME_OUT_LIMIT)
    @page_object.menuBar.homeIcon_element.click
    @page_object.menuBar.search_element.click

    @page_object.searchRelated.dropDownIcon_element.when_visible(TIME_OUT_LIMIT).click
    
    @page_object.searchRelated.jobsDrop_element.when_visible(TIME_OUT_LIMIT).click
  end
  WaitUtility.wait_untill_elements_size_steadied
end
