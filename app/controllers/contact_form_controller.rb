class ContactFormController < ApplicationController
  def create
    @name = params[:contact_form][:name]
    @last_name = params[:contact_form][:last_name]
    @email = params[:contact_form][:email]
    @message = params[:contact_form][:message]
    ContactMailer.simple_message(@name, @last_name, @email, @message).deliver_now
    flash[:success] = "Merci d'avoir contacter Radio Télé Patriarche \nVotre message a ete envoyée."
    redirect_to :root
  end
end
