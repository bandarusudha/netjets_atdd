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


      row_array = Array.new
      self.schedule_results_element.each do |row|
          row_array << row.text
       p row_array
      end
end
      # table_array = Array.new
      #
      # table_row1 = {}
      # table_row1[:flightno] = '987'
      # table_row1[:stops] = '1 stop'
      #
      # table array << table_row
      #
      # table_row2 = {}
      #   table_row2[:flightno] = '31444'
      #   table_row2[:stops] = '2 stop'
      #
      #   table array << table_row2


    def today_schedule
      return self.selected_date.text
    end

  end



