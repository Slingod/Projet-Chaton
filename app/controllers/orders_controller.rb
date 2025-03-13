class OrdersController < ApplicationController
    def create
      @order = Order.new(order_params)
  
      if @order.save
        OrderMailer.with(order: @order).new_order_email.deliver_later
  
        flash[:success] = "Merci pour ta commande ! Nous te contacterons bientôt."
        redirect_to root_path
      else
        flash.now[:error] = "Erreur dans le formulaire. Vérifie et réessaye."
        render :new
      end
    end
  
    private
  
    def order_params
      params.require(:order).permit(:name, :email, :message)
    end
  end  