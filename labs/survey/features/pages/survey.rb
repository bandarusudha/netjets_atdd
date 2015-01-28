require 'page-object'

class Survey
  include PageObject

  page_url "bit.ly/watir-webdriver-demo"

  text_field(:name, :id => 'entry_1000000')
  select(:language, :id => 'entry_1000001')
  button(:submit, :name => 'submit')
end