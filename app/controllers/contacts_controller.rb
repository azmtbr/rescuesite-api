class ContactsController < ApplicationController


  def new
  end

  def create
    Contact.send_contact_form(:name, :email, :message).deliver_now
  end

end
