class AdoptionFormMailer < ApplicationMailer

  def send_notice (message, link)
    @message = message
    @link = link
    mail(
      to: ENV['MY_EMAIL'],
      from: "adoption@myrescuesite.com",
      subject: "You have a new, completed adoption form to view",
    )
  end
end
