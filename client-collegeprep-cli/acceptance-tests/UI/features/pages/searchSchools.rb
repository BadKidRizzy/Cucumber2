class SearchSchoolsPage
  include PageObject
  page_url('/search/schools')
  
  # text_field(:searchBox, :name => 'search')
  text_field(:searchBox, :css => "input[placeholder='Search']")
  button(:search, :css => "button[type='submit']")
  table(:searchResults, :css => '.table.table-sortable')
  cell(:searchResultsHeads, :css => '.table.table-sortable .sort-col')

  div(:searchFilters, :css => '.well')

  checkbox(:public, :id => 'filter1-1')
  checkbox(:private, :id => 'filter1-2')
  span(:resetType, :css => '.reset.pull-right')

  checkbox(:certificate, :id => 'filter2-1')
  checkbox(:associate, :id => 'filter2-2')
  checkbox(:bachelor, :id => 'filter2-3')
  checkbox(:advanced, :id => 'filter2-4')
  span(:awardReset, :xpath => "//div/div[2]/span")

  checkbox(:small, :id => 'filter3-1')
  checkbox(:medium, :id => 'filter3-2')
  checkbox(:large, :id => 'filter3-3')
  span(:sizeReset, :xpath => "//div/div[3]/span")

  radio(:region, :id => 'filter4-4')
  select_list(:regionDrop, :id => 'region')
  radio(:state, :id => 'filter4-3')
  select_list(:stateDrop, :id => 'state')
  radio(:zip, :id => 'filter4-1')
  text_field(:zipcode, :id => 'zip-code')
  span(:locationReset, :css => "div ~ div ~div ~div .reset")

  # text_field(:minimum, :css => 'div.form-group > input.form-control')
  # text_field(:maximum, :css => 'div.form-group ~ .form-group > input.form-control')
  text_field(:minimum, :css => '.filter.tuition .form-group input')
  text_field(:maximum, :css => '.filter.tuition .form-group ~ .form-group input')

  span(:tuitionReset, :css => "div ~ div ~div ~div ~div .reset")

  checkbox(:city, :id => 'filter6-1')
  checkbox(:suburban, :id => 'filter6-2')
  checkbox(:town, :id => 'filter6-3')
  checkbox(:rural, :id => 'filter6-4')
  span(:campusReset, :css => "div ~ div ~div ~div ~div ~div .reset")

  checkbox(:hbcu, :id => 'filter7-1')
  checkbox(:hispanic, :id => 'filter7-2')
  checkbox(:tribal, :id => 'filter7-3')
  checkbox(:religious, :id => 'filter7-4')
  checkbox(:male, :id => 'filter7-5')
  checkbox(:female, :id => 'filter7-6')
  span(:missionReset, :css => "div ~ div ~div ~div ~div ~div ~div .reset")  

  link(:next, :text => 'Next »')
  link(:nextDisabled, :css => '.disabled a')

  span(:allReset, :css => '.icon-ccw')
  div(:textCenter, :css => '.text-center')
  span(:firstSelected, :css => '.label.label-default.clickable')
end