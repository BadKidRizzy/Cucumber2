class SettingsPage
  include PageObject
  page_url('/profile/settings')

  h1(:title, :css => '.text-primary')
  
  radio_button(:emailOn, :id =>'email-on')
  radio_button(:textOn, :id =>'text-on')

  radio_button(:emailOff, :id =>'email-off')
  radio_button(:textOff, :id =>'text-off')

  text_field(:currentPassword, :id => 'current')
  text_field(:newPassword, :id => 'new')
  text_field(:reType, :id => 'confirm')

  button(:save, :css => '.btn.btn-primary.save')
  button(:cancel, :css => '.btn.btn-danger')

  link(:forget, :href => '/auth/forgot-pass')
end