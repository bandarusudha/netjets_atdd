require 'page-object'

include PageObject::PageFactory

When(/^I submit my ruby platform registration$/) do
  open_the_survey
  submit_valid_survey_info
end

Then(/^I get a big thanks$/) do
  survey_results = gather_survey_results
  expect(survey_results[:message]).to include 'Thank you'
end