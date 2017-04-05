class SearchOccupationsPage
  include PageObject
  page_url('/search/occupations')


  text_field(:salary, :css => '.form-control')
  span(:salaryReset, :css => "div .reset")

  select_list(:careerDrop, :css => '#career-cluster')
  span(:careerReset, :css => "div ~ div .reset")

  checkbox(:science, :css => '#Science')
  checkbox(:technology, :css => '#Technology')
  checkbox(:engineering, :css => '#Engineering')
  checkbox(:math, :css => '#Math')
  checkbox(:multi, :id => 'Multi/interdisciplinary Studies')
  span(:stemReset, :css => "div ~ div ~div .reset")

  img(:some, :css => '.rate-icons .prep-icon')
  img(:medium, :css => '.rate-icons ~ .rate-icons .prep-icon')
  img(:considerable, :css => '.rate-icons ~ .rate-icons ~ .rate-icons .prep-icon')
  div(:somediv, :css => '.rate-icons')
  div(:mediumdiv, :css => '.rate-icons ~ .rate-icons')
  div(:considerablediv, :css => '.rate-icons ~ .rate-icons ~ .rate-icons')
  span(:preparationReset, :css => "div ~ div ~div ~div .reset")

  checkbox(:greenJob, :css => '#b1')
  checkbox(:emerging, :css => '#b2')
  checkbox(:numerous, :css => '#b3')
  checkbox(:rapid, :css => '#b4')
  span(:outlookReset, :css => "div ~ div ~div ~div ~div .reset")
end








