class Contact < ApplicationMailer


  def send_contact_form (name, email, message)
    @name = name
    @email = email
    @message = message
    mail(
      to: ENV['MY_EMAIL'],
      subject: "Contact form from website",
    )
  end
end
