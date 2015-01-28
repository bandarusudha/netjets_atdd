
include PageObject::PageFactory

class SouthwestHomePage
include PageObject

  page_url 'www.southwest.com'

  link(:flight_schedule_link, :class => 'swa-footer--item',:text=> 'Flight Schedules')

def open_flight_schedule_page
  flight_schedule_link
end

end