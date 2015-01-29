include PageObject::PageFactory

module BillpayInteractions

  def open_bank_page
    visit_page LoginPage
  end

  def add_new_payee
    new_payee = Payee.new
    new_payee.name = 'sudha'
    new_payee.account_no = '12345676'
    new_payee.address = 'ipfah dafhad fad;fhadf'
    new_payee.email = 'asjdbaj@gmail.com'
    new_payee.phone = '4667 53711'

    on(PayeeInfoScreen) do |page|
      page.addnewpayee
      page.name = new_payee.name
      page.account_number = new_payee.account_no
      page.address = new_payee.address
      page.emailaddress = new_payee.email
      page.phone = new_payee.phone
      page.save
    end
    return new_payee
  end

  def open_make_a_payment_screen
    on(HomePage).makepaymentlink
  end

  def make_a_payment payee , pay_from , pay_amount , pay_date
    on(MakePaymentPage) do |page|
      page.payeename = payee
      page.payfrom = pay_from
      page.payamount = pay_amount
      page.paydate = pay_date
      page.submit
    end

  def payment_confirmation
    on(PaymentConfirmationPage).confirmation_message
end
  end

  def select_payee
    on(MakePaymentPage) do |page|
      # page.payeename= 1
      page.payeename_options[1]
    end
  end

  def edit_payee
    edit_payee = Payee.new
    edit_payee.account_no = '3416481 3434'
    edit_payee.phone = '455 3536'
    on(MakePaymentPage) do |page|
    page.editpayee
    page.account_number = edit_payee.account_no
    page.phone = edit_payee.phone
    page.save
    end
    return edit_payee
  end

  def open_the_payee_info
    on(MakePaymentPage).editpayee
  end

  def delete_a_payee
    self.select_payee
    on(MakePaymentPage).deletepayee
  end

end

World BillpayInteractions