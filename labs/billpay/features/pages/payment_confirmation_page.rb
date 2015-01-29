class PaymentConfirmationPage
  include PageObject
  text_field(:confirmation_message, :id =>confirmation_text)
end