class DrinksController < ApplicationController
    
    def new
        @drink = Drink.new
    end
    
    def index
        @drinks = Drink.all
        
        respond_to do |format|
            format.html { render 'index' }
            format.json { render json: @drinks}
        end
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
    
    
    private
    
    def drink_params
        params.require(:drink).permit(:name)
    end
    
end
