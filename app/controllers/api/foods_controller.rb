class Api::FoodsController < ApplicationController
    
    def index
        @foods = Food.all
        
        render json: @foods.as_json(:only => [:foodlist,:quantity])
    end
    
end
