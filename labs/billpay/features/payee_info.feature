Feature: Payee information
  As a customer
  I want to setup payee's info
  so that I can pay them

Scenario: Create a new payee
  When I create a new payee
  Then a new payee is used to make a payment

Scenario: Edit existing payee information
  When I edit payee information
  Then edited payee information is saved

Scenario: Delete payee
  When I delete an existing payee
  Then the Payee no longer exists in the system