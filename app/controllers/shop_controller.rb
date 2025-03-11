class ShopController < ApplicationController
    def index
      @pictures = Picture.all
    end


  end