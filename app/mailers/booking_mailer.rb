class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.book_mailer.subject
  #
  def book_mailer(pass)
    @greeting = "Hi"
    @user = pass
    @mail = 
    mail to: @user.email
  end
  # default from: 'odinairlines@example.com'

  #   @url = 'http://localhost:3000'
  # def confirmation_email (name, email)
  #   # @booking = booking
  #   mail(to:email, subject: 'Your Eticket')
  # end



end
