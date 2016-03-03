class Contact < ActionMailer::Base
  validates_presence_of :name, :email, :message


end
