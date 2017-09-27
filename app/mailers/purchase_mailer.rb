class PurchaseMailer < ActionMailer::Base
  layout 'purchase_mailer'
  default from: "Mark nelson <mark_andrew_nelson@hotmail.com>"

  def purchase_receipt purchase
    @purchase = purchase
    mail to: purchase.email, subject: "Thanks for your business"
  end
end