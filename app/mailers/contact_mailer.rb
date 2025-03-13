class ContactMailer < ApplicationMailer
    def new_contact_email
      @contact = params[:contact]
      mail(to: ENV['GMAIL_USERNAME'], subject: "Nouveau message de #{params[:name]}")
    end
  end  