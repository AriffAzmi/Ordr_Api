class DrinksController < ApplicationController
    
    def new
        @drink = Drink.new
    end
    
    def edit
        @drink = Drink.find(params[:id])
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
    
    def update
        @drink = Drink.find(params[:id])
        if @drink.update(drink_params)
            redirect_to @drink
        else
            render 'edit'
        end
    end
    
    
    private
    
    def drink_params
        params.require(:drink).permit(:name)
    end
    
end
