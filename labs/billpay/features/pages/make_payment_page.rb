require 'Page-object'

class MakePaymentPage
  include PageObject

  select_list(:payeename,:id => 'payee_name')
  text_field(:payfrom,:id => 'pay_from')
  text_field(:payamount,:id => 'pay_amount')
  text_field(:paydate,:id => 'pay_date')
  button(:submit, :id => 'sumbit_buuton')
  button(:editpayee, :id =>'edit_payee')
  button(:deletepayee, id => 'delete_payee')

end