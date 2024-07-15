class ContactFormController < ApplicationController
  def create
    @name = params[:name]
    @last_name = params[:last_name]
    @email = params[:email]
    @message = params[:message]

    # success message
    flash[:success] = "Your Message has been sent successfully!"
    redirect_to :controller => "contact_form", :action => "new"
  end
end
