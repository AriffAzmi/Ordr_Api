class Api::DrinksController < ApplicationController
    
    def index
        @drinks = Drink.all
        
        render json: @drinks.as_json(:only => [:id,:name,:qty])
    end
    
end

