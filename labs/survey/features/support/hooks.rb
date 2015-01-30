require 'watir-webdriver'

Before do |scenario|
  @browser = Watir::Browser.new $browser_type.to_sym
end

After do |scenario|
  @browser.close
end