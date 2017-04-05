class PageObjectHomeRelated
  include PageObject
  
  def homePage
    HomePage.new(@browser)
  end

  def menuBar
    MenuBar.new(@browser)
  end

  def searchSchoolsPage
    SearchSchoolsPage.new(@browser)
  end

  def searchMajorsPage
    SearchMajorsPage.new(@browser)
  end

  def searchRelated
    SearchRelated.new(@browser)
  end

  def searchOccupationsPage
    SearchOccupationsPage.new(@browser)
  end

  def searchJobsPage
    SearchJobsPage.new(@browser)
  end
end
