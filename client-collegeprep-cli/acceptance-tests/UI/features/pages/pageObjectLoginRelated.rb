class PageObjectLoginRelated
  include PageObject
  
  def homePage
    HomePage.new(@browser)
  end

  def signUpPage
    SignUpPage.new(@browser)
  end
  
  def loginPage
    LoginPage.new(@browser)
  end

  def loginDropDown
    LoginDropDown.new(@browser)
  end

  def profilePage
    ProfilePage.new(@browser)
  end

  def settingsPage
    SettingsPage.new(@browser)
  end

  def applyPage
    ApplyPage.new(@browser)
  end

  def menuBar
    MenuBar.new(@browser)
  end
end
