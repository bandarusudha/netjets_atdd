require 'page-object'
class FlightSchedulePage

    include PageObject

    text_field(:departure_city, :id => 'originAirport_displayed')
    text_field(:arrival_city, :id => 'destinationAirport_displayed')
    button(:search_button, :id => 'flightSchedulesForm_submitButton')
    a(:selected_date,:class=>'swa_tabs_travelDate')
    table(:schedule_results, :class => 'swa_feature_flightStatus_results_table swa_tables_grayTable2')

    def set_airports
      self.departure_city = "columbus"
      self.arrival_city = "las vegas"

    end

    def get_daily_schedule
      self.search_button
   p self.schedule_results_element[2][0].text

    end

    def today_schedule
      return self.selected_date.text
    end

  end



