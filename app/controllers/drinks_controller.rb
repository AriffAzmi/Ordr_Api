class DrinksController < ApplicationController
skip_before_filter :verify_authenticity_token, :only => [:create, :update]
before_action :set_drink, only: [:show, :update, :destroy]
    
    
    def index
        @drinks = Drink.all
        
        respond_to do |format|
            format.html { render 'index' }
        end
    end

    def new
        @drink = Drink.new
    end
    
    def create
        
        @drink = Drink.new(drink_params)
        if @drink.save
        flash[:alert] = "Successfully create drink"
        redirect_to @drink
        else
            render 'new'
        end        
    end
    
    def show
        @drink = Drink.all
    end

    def edit
        @drink = Drink.find(params[:id])
    end
    
    def update
        @drink = Drink.find(params[:id])
        if @drink.update(drink_params)
            redirect_to @drink
        else
            render 'edit'
        end
    end
    
    
    private

    def set_drink
        @drink = Drink.find(params[:id])
    end
    
    def drink_params
        params.require(:drink).permit(:name)
    end
    
end
