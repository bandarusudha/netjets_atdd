require 'page-object'

class SurveyResult
  include PageObject

  div(:response, :xpath => '//div[@class="ss-resp-message"]')
end