class Api::DrinksController < ApplicationController
skip_before_filter :verify_authenticity_token, :only => [:create, :update, :destroy]
before_action :set_drink, only: [:show, :update, :destroy]
    
    # GET /api/Drinks
    def index
        @drinks = Drink.all
        
        render json: @drinks.as_json(:only => [:id, :name,:qty])
    end

    # GET /api/Drinks/1
    def show
        render json: @drink
    end
    
    # POST /api/Drinks
    def create
        @drink = Drink.new(drink_params)

        if @drink.save
            render json: @drink, status: :created
        else
            render json: @drink.errors, status: :unprocessable_entity
        end
    end

    # PUT /api/Drinks/1
    def update
        if @drink.update(drink_params)
            head :no_content
        else
            render json: @drink.errors, status: :unprocessable_entity
        end
    end

    # DELETE /api/Drinks/1
    def destroy
        @drink.destroy

        head :no_content
    end
    
    private
    
    def set_drink
        @drink = Drink.find(params[:id])
    end
    
    def drink_params
        params.require(:drink).permit(:name, :qty)
    end

end