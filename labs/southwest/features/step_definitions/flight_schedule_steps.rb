When(/^I look up the daily flight schedule between two cities$/) do

  visit_page 'FlightSchedulePage'
 # enter the departure and arrival airports
  #enter date and search
end

Then(/^I get the daily flight schedule between those cities for that day$/) do
  on(FlightSchedulePage) do |page|
    page.get_daily_schedule
    expect(page.today_schedule).to eq Date.today
  end
end