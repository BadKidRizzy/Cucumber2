class SearchMajorsPage
  include PageObject
  page_url('/search/majors')
  
  text_field(:searchBox, :css => 'form-control ng-pristine ng-valid ng-touched')
  button(:search, :css => '.btn btn-primary pull-right')
  table(:searchResults, :css => '.table.table-sortable')

  checkbox(:agriculture, :id => '7a1ac020-b3e7-4d3e-b98b-0a398d76fe6c')
  checkbox(:biological, :id => 'a9151fd9-1e22-44fe-a590-2477f6534450')
  checkbox(:computer, :id => 'd61f2a84-04ba-4d56-90cf-8d9635229cbe')
  checkbox(:engineering, :id => '5de76e9f-3e42-4ee7-aa7a-d03f771e0a3d')
  checkbox(:engineeringTechnology, :id => 'c0585d01-a427-4ed8-91e3-ead0b775558b')
  checkbox(:health, :id => '1621bab6-9c55-44a2-b07c-4f9eacfe0be3')
  checkbox(:mathematics, :id => '6dd1774c-4bea-4da2-a5aa-5835f8777ae6')
  checkbox(:interdisciplinary, :id => '37ae9837-7f20-4da1-ac5a-268aa31a5916')
  checkbox(:natural, :id => 'a25eb75d-90ca-46b1-a079-cc3ee1f32528')
  checkbox(:physical, :id => 'e6f3c8c2-97c0-4652-9bbc-fe2f2a8808e9')
  checkbox(:science, :id => '7a12cb9f-3a57-4144-8f84-bfb11b377022')
  span(:resetStudy, :css => '.reset.pull-right')

  checkbox(:stemScience, :id => 'Science')
  checkbox(:technology, :id => 'Technology')
  checkbox(:stemEngineering, :id => 'Engineering')
  checkbox(:stemMathematics, :id => 'Math')
  checkbox(:multiDiscilinary, :id => 'Multi/interdisciplinary Studies')
  span(:stemReset, :xpath => "//div/div[2]/span")

  link(:next, :text => 'Next')
  span(:allReset, :css => '.icon-ccw')
end