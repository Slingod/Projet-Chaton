require 'ostruct'

class ContactsController < ApplicationController
    def new
      @contact = OpenStruct.new
    end
  
    def create
      @contact = OpenStruct.new(contact_params)
  
      if @contact.name.present? && @contact.email.present? && @contact.message.present?
        ContactMailer.with(contact: @contact).new_contact_email.deliver_now
        flash[:success] = "Votre message a bien été envoyé !"
        redirect_to contact_path
      else
        flash[:error] = "Erreur lors de l'envoi du message."
        render :new
      end
    end
  
    private
  
    def contact_params
      params.permit(:name, :email, :message)
    end
  end
  