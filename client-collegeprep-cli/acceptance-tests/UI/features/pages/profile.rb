class ProfilePage
  include PageObject

  page_url('/profile/view')
  
  h1(:title, :text => "Profile")
  # div(:profileContainer, :css => ".container.profile-page")
  body(:profileContainer, :xpath => "/body")
  # link(:login, :text => "Log in")

  link(:edit, :text => 'Edit')

  text_field(:firstName, :id => 'first-name')
  text_field(:lastName, :id => 'last-name')
  text_field(:schoolName, :id => 'school-name')

  radio_button(:female, :id => 'female')
  radio_button(:male, :id => 'male')
  # radio(:female, :id => 'female')
  # radio(:male, :id => 'male')

  # radio(:gender, :name => 'gender')
  select_list(:citizenship, :id => 'citizenship')
  select_list(:ethnicity, :id => 'ethnicity')
  select_list(:race, :id => 'race')

  select_list(:birthMonth, :id => 'birth-month')
  select_list(:birthDay, :id => 'birth-day')
  select_list(:birthYear, :id => 'birth-year')

  text_field(:email, :id => 'email')
  text_field(:phone, :id => 'phone')

  button(:cancel, :text => 'Cancel')
  button(:save, :text => 'Save')

end