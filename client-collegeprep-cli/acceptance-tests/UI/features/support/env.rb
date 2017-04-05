path = File.expand_path('../../pages', __FILE__)
$LOAD_PATH.unshift path unless $LOAD_PATH.include?(path)
path = File.expand_path('../../support', __FILE__)
$LOAD_PATH.unshift path unless $LOAD_PATH.include?(path)
path = File.expand_path('../../common', __FILE__)
$LOAD_PATH.unshift path unless $LOAD_PATH.include?(path)
path = File.expand_path('../../steps/helper', __FILE__)
$LOAD_PATH.unshift path unless $LOAD_PATH.include?(path)

require 'rubygems'
require "selenium-webdriver"
require 'rspec'
require 'rubygems'
require 'page-object'
require 'page-object/page_factory'
require 'watir-webdriver'
require "rspec/expectations"
require "WebUrlFactory"
require "ScreenShotName"
require "WebDriverFactory"
require "WaitUtility"
require "TableUtiity"
require "TestSupport"

Before do
  BROWSER ||= WebDriverFactory.web_driver_factory()
  @screen_shot_option ||= WebDriverFactory.screen_shot  
  BROWSER.driver.manage.delete_cookie "cart"
  BROWSER.driver.manage.delete_all_cookies
  BROWSER.driver.manage.window.maximize

  TIME_OUT_LIMIT ||= 6
  Per_Page ||= 10
  URLS ||= WebUrlFactory.web_url_factory
end

After do |scenario|
  
  if (scenario.failed? && @screen_shot_option == true)
    screenshot_name = ScreenShotName.take_screenshot_name(scenario)

    screen_width = BROWSER.execute_script("return screen.width;")
    screen_height = BROWSER.execute_script("return screen.height;")
    BROWSER.driver.manage.window.resize_to(screen_width,screen_height)
    BROWSER.driver.manage.window.move_to(0,0)
    BROWSER.execute_script("document.body.style.zoom='60%'")
    
    BROWSER.driver.save_screenshot screenshot_name
    embed screenshot_name, 'image/png'
    BROWSER.execute_script("document.body.style.zoom='100%'")
  end

  if scenario.failed?
    if (BROWSER.url.include? "sign") || (BROWSER.url.include? "login") || (BROWSER.url.include? "profile")
      @page_object.loginDropDown.username_element.when_visible(TIME_OUT_LIMIT).click

      @page_object.loginDropDown.logOut_element.when_visible(TIME_OUT_LIMIT).click
      BROWSER.goto URLS
    end
  end
  
end

at_exit do
  BROWSER.close
end