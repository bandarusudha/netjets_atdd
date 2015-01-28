require 'page-object'

class PayeeInfoScreen
  include PageObject
# TODo


  button(:addnewpayee, :id =>  '')
  text_field(:name, :id => '')
  text_field(:account_number, :id => '')
  text_field(:address, :id => '')
  text_field(:emailaddress, :id => '')
  text_field(:phone, :id => '')
  button(:save, :id =>'')

end

