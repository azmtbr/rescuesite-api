class Contact < ApplicationMailer


  def send_contact_form (name, email, message)
    @name = :name
    @email = 'This should be the email'
    @message = 'This should be the message'
    mail(
      to: ENV['MY_EMAIL'],
      subject: "Contact form from website",
    )
  end
end
