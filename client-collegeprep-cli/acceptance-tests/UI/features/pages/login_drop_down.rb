class LoginDropDown
  include PageObject
  span(:username, :css => '.name')

  link(:dropDown, :css => '.icon.icon-chevron-down')
  

  link(:profile, :text => "Profile")
  link(:settings, :text => "Settings")
  # link(:logOut, :css => "a[href$='Logout']")
  link(:logOut, :text => "Logout")
  
end
