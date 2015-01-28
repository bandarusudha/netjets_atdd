require 'page-object'
class FlightSchedulePage

    include PageObject

    page_url "www.southwest.com"

    text_field(:departure_city, :id => 'originAirport_displayed')
    text_field(:arrival_city, :id => 'destinationAirport_displayed')
    button(:search_button, :id => 'flightSchedulesForm_submitButton')
    a(:selected_date,:class=>'swa_tabs_travelDate')

    def get_daily_schedule
      self.departure_city = "columbus"
      self.arrival_city = "las vegas"
      self.search_button.click
    end

    def today_schedule
      return self.selected_date.text
    end

  end



