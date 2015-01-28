

When(/^I look up the daily flight schedule between two cities$/) do

  visit_page SouthwestHomePage
  on(SouthwestHomePage) do |page|
    page.open_flight_schedule_page
  end

  on(FlightSchedulePage) do |page|
    page.set_airports
  end
 # enter the departure and arrival airports
  #enter date and search
end

Then(/^I get the daily flight schedule between those cities for that day$/) do
  on(FlightSchedulePage) do |page|
    page.get_daily_schedule
    # departure schedule
    # arrival schedule
    # p page.schedule_results_element[0][1].text
    # expect(page.today_schedule).to eq Date.today
  end
end