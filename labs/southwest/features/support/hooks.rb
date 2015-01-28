require 'watir-webdriver'
require 'page-object'

Before do
  @browser = Watir::Browser.new 'firefox'
end

After do
  @browser.close
end