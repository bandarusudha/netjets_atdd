When(/^I create a new payee$/) do
  open_bank_page
  open_make_a_payment_screen
  @payee =  add_new_payee
end

Then(/^a new payee is used to make a payment$/) do
  make_a_payment @payee.name 'checkings' , '50$' , Date.today
  expect(payment_confirmation).to include 'your payment is sucessfull'
end


When(/^I edit payee information$/) do
  open_bank_page
  open_make_a_payment_screen
  select_payee
 @payee =  edit_payee
end

Then(/^edited payee information is saved$/) do
  open_the_payee_info
  expect(@payee.account_no).to eq '3416481 3434'
  expect(@payee.phone).to eq '455 3536'
end

When(/^I delete an existing payee$/) do
  delete_a_payee
end

Then(/^the Payee no longer exists in the system$/) do
  select_payee
  expect(payee_error_message).to eq "paye no longer exist"
end
