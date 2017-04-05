class SearchJobsPage
  include PageObject
  page_url('/search/jobs')

  text_field(:salary, :css => 'h5 ~ input')
  span(:salaryReset, :css => "div .reset")

  radio_button(:not, :id => 'ed-code-0')
  radio_button(:none, :id => 'ed-code-1')
  radio_button(:highSchool, :id => 'ed-code-2')
  radio_button(:associate, :id => 'ed-code-3')
  radio_button(:bachelor, :id => 'ed-code-4')
  radio_button(:graduate, :id => 'ed-code-5')
  radio_button(:doctorate, :id => 'ed-code-6')
  span(:eduReset, :css => "div ~ div .reset")

  select_list(:categories, :id => 'categories')
  span(:categoryReset, :css => "div ~ div ~ div .reset")

  radio_button(:zip, :id => 'filter4-4')
  text_field(:zipBox, :id => 'zip-code')
  radio_button(:city, :id => 'filter4-3')
  text_field(:cityBox, :id => 'city')
  radio_button(:state, :id => 'filter4-1')
  select_list(:stateBox, :id => 'state')
  span(:locationReset, :css => "div ~ div ~ div ~ div .reset")

  checkbox(:full,       :id => 'emp-type-0')
  checkbox(:part,       :id => 'emp-type-1')
  checkbox(:contractor, :id => 'emp-type-2')
  checkbox(:intern,     :id => 'emp-type-3')
  checkbox(:perDiem,    :id => 'emp-type-4')
  span(:employReset, :css => "div ~ div ~ div ~ div ~ div .reset")

  radio_button(:oneDay, :id => 'day-1')
  radio_button(:threeDay, :id => 'day-3')
  radio_button(:week, :id => 'day-7')
  radio_button(:month, :id => 'day-30')
  span(:postReset, :css => "div ~ div ~ div ~ div ~ div ~ div .reset")

  b(:emplymentPage, :css => '.col-xs-6 ~ .col-xs-6 b')
  b(:educationPage, :css => '.col-xs-6 ~ .col-xs-6 ~ .col-xs-6 b')
  b(:experiencePage, :css => '.col-xs-6 ~ .col-xs-6 ~ .col-xs-6 ~ .col-xs-6 b')
  b(:industryPage, :css => '.col-xs-6 ~ .col-xs-6 ~ .col-xs-6 ~ .col-xs-6 ~ .col-xs-12 b')
  div(:row3Page, :css => '.row ~ .row  ~ .row ~ .row')
  div(:detailPage, :css => '.well')
  

end