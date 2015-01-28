include PageObject::PageFactory

module BillpayInteractions

  def open_bank_page
    visit_page LoginPage
  end

  def add_new_payee name , account_number , address , email_address , phone_no
    new_payee = Payee.new
    on(PayeeInfoScreen) do |page|
      page.addnewpayee
      page.name = name
      page.account_number = account_number
      page.address = address
      page.emailaddress = email_address
      page.phone = phone_no
      page.save
      return new_payee

    end

  end

  def open_make_a_payment_screen
    on(LoginPage).makepaymentlink
  end

  def make_a_payment payee  , pay_from , pay_amount , pay_date
    on(MakePaymentPage) do |page|
      page.payeename = payee
      page.payfrom = pay_from
      page.payamount = pay_amount
      page.paydate = pay_date
      page.submit
    end
  end


end

World BillpayInteractions