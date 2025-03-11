# app/controllers/home_controller.rb
class HomeController < ApplicationController
  def index
  end

  def contact
  end

  def shop
    @pictures = Picture.all  # Récupère tous les chatons
  end

  def show
    @picture = Picture.find(params[:id])  # Récupère le chaton par son ID
  end

  def admin
  end
end