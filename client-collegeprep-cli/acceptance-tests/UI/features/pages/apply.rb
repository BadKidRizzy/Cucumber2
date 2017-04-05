class ApplyPage
  include PageObject

  page_url('/apply')
  
  h1(:title, :text => 'Apply')
  h1(:titleApplication, :text => 'Application')

  h1(:pageName, :css => '.text-primary.form-header')
  link(:nextPage, :text => 'Next')
  link(:previousPage, :text => 'Previous')
  button(:save, :text => 'Save')

  button(:compare, :text => 'Compare')
  link(:viewApplication, :text => 'View Application')

  link(:personal, :css => "a[href$='personal']")
  link(:address, :css => "a[href$='address']")
  link(:contact, :css => "a[href$='contact']")
  link(:education, :css => "a[href$='education']")
  link(:tests, :css => "a[href$='tests']")
  link(:otherActivities, :css => "a[href$='other-activities']")
  link(:writingMedia, :css => "a[href$='writing-and-media']")

  div(:applicationContent, :css => '.trow.two-cols.row')
  div(:leftApplicationContent, :css => '.trow.two-cols.row .col-md-3.col-sm-4.col-xs-12')
  div(:rightApplicationContent, :css => '.trow.two-cols.row .col-md-9.col-sm-8.col-xs-12')

  text_field(:firstName, :id => 'first_name')
  text_field(:middleName, :id => 'middle_name')
  text_field(:lastName, :id => 'last_name')

  text_field(:dateBirth, :css => '.input-group .form-control')
  
  radio_button(:female, :id => 'female')
  radio_button(:male, :id => 'male')

  select_list(:race, :id => 'race')
  select_list(:ethnicity, :id => 'ethnicity')

  #Address -------------
  text_field(:streetAddress, :css => '#street_address')
  text_field(:city, :css => '#city')
  text_field(:state, :css => '#state')
  text_field(:zip, :css => '#zip')

  link(:edit, :text => 'Edit')
  link(:delete, :text => 'Delete')

  #Contact -------------
  text_field(:name, :name => 'name')
  text_field(:phone, :name => 'phone')
  text_field(:email, :name => 'email')
  text_field(:relation, :name => 'relation')

  #Education -------------
  text_field(:nameEdu, :id => 'name')
  text_field(:subjectEdu, :id => 'subject')
  textarea(:descriptionEdu, :id => 'description')
  text_field(:scoreEdu, :id => 'score')

  text_field(:startDate, :css => "[name = 'start_date'] input")
  text_field(:endDate, :css => "[name = 'end_date'] input")
  text_field(:graduationDate, :css => "[formcontrolname='graduation_date'] input")

  #Tests -------------
  select_list(:testDrop, :id => 'test')
  select_list(:subjectDrop, :id => 'subject')
  select_list(:courseDrop, :id => 'description')
  text_field(:testDate, :css => ".input-group input")
  text_field(:scoreTest, :name => 'score')

  #save -----------------
  table(:saveTable, :css => '.table.table-sortable')

  #date table --------

  button(:yearBut, :id => 'datepicker--6557-title')
  button(:yearText, :id => /datepicker/)
  
  table(:dateTableStart, :css => "[role='grid']")
  table(:dateTableEnd, :css => ".col-md-4 ~ .col-md-4 [role='grid']")
  table(:dateTableGard, :css => ".col-md-4 ~ .col-md-4 ~ .col-md-4 [role='grid']")
  
  button(:yearRightStart, :css => '.btn.btn-default.btn-sm.pull-right')                        
  button(:yearLeftStart, :css => '.pull-left')

  button(:yearRightEnd, :css => '.col-md-4 ~ .col-md-4 .calendar .pull-right')                        
  button(:yearLeftEnd, :css => '.col-md-4 ~ .col-md-4 .calendar .pull-left')

  button(:yearRightGrad, :css => '.col-md-4 ~ .col-md-4 ~ .col-md-4 .calendar .pull-right')                        
  button(:yearLeftGrad, :css => '.col-md-4 ~ .col-md-4 ~ .col-md-4 .calendar .pull-left')

end