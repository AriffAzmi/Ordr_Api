class Api::DrinksController < ApplicationController
    
    def index
        @drinks = Drink.all
        
        render json: @drinks.as_json(:only => [:drinks,:qty])
    end
    
end

