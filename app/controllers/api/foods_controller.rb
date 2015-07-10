class Api::FoodsController < ApplicationController
    
    def index
        @foods = Food.all
        
        render json: @foods.as_json(:only => [:name,:qty])
    end
    
    def create
        @food = Food.new(food_params)
        if @food.save
            render json: @food, status: :created
        else
            render json: @food.errors, status: :unprocessable_entity
        end
    end
    
    private
    
    def set_food
        @food = Food.find(params[:id])
    end
    
    def food_params
        params.require(:food).permit(:name, :qty)
    end

end
