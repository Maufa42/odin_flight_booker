# Preview all emails at http://localhost:3000/rails/mailers/booking_mailer
class BookingMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/booking_mailer/book_mailer
  def book_mailer
    BookingMailer.with(name: Booking.last.name,email:Booking.last.email).book_mailer
  end

end
