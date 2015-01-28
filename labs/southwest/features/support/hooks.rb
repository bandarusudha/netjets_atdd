require 'watir-webdriver'

Before do
  @browser = Watir::Browser.new 'firefox'
end

After do
# @browser = Watir::Browser.close
#   @browser = Watir::Browser.close 'firefox'
  @browser.close
end