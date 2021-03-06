class Api::FoodsController < ApplicationController
skip_before_filter :verify_authenticity_token, :only => [:create, :update, :destroy]
before_action :set_food, only: [:show, :update, :destroy]
    
    # GET /api/foods
    def index
        @foods = Food.all
        
        render json: @foods.as_json(:only => [:id, :name,:qty])
    end

    # GET /api/foods/1
    def show
        render json: @food
    end
    
    # POST /api/foods
    def create
        @food = Food.new(food_params)

        if @food.save
            render json: @food, status: :created
        else
            render json: @food.errors, status: :unprocessable_entity
        end
    end

    # PUT /api/foods/1
    def update
        if @food.update(food_params)
            head :no_content
        else
            render json: @food.errors, status: :unprocessable_entity
        end
    end

    # DELETE /api/foods/1
    def destroy
        @food.destroy

        head :no_content
    end
    
    private
    
    def set_food
        @food = Food.find(params[:id])
    end
    
    def food_params
        params.require(:food).permit(:name, :qty)
    end

end