class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      if params[:name].nil?
        @name_error = "Cannot Be blank" 
      else 
        @old_name = params[:name]
      end
      if params[:email].nil?
        @email_error = "Cannot Be blank" 
      else 
        @old_email= params[:email]
      end
      render :new
    end
  end
end
