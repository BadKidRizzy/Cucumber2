class MenuBar
  include PageObject

  page_url('')
  
  link(:homeIcon, :href => "/home")
  link(:signup, :text => "Sign up")
  link(:login, :text => "Log in")

  link(:home, :text => "Home")
  link(:search, :text => "Search")
  link(:discover, :text => "Discover")
  link(:apply, :text => "Apply")
  link(:tasks, :text => "Tasks")
  link(:advisor, :text => "Advisor")
end