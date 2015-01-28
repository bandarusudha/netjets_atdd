class LoginPage
  include PageObject

  page_url ''

  link(:makepaymentlink, :id =>'')
  text_field(:username,:id=> '')
  text_field(:password, :id=> '')
  button(:signin, :id=>'')
end