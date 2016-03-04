class ContactsController < ApplicationController


  def new
  end

  def create
    Contact.send_contact_form(params[:name], params[:email], params[:message]).deliver_now
  end

end
