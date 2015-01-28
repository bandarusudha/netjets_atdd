Then(/^a new payee is used to make a payment$/) do
  make_a_payment
end



When(/^I create a new payee$/) do
  open_bank_page
  open_make_a_payment_screen
  add_new_payee
end