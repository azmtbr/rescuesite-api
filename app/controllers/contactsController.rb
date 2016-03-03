class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Your message has been sent'
    else
      flash.now[:error] = 'There was a problem sending your message'
      render :new
    end
  end

end
