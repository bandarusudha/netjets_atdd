require 'Page-object'

class MakePaymentPage
  include PageObject

  text_field(:payeename,:id => '')
  text_field(:payfrom,:id => '')
  text_field(:payamount,:id => '')
  text_field(:paydate,:id => '')
  button(:submit, :id => '')

end