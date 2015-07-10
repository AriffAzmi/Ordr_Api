class FoodsController < ApplicationController
    
    def new
        @food = Food.new
    end
    
    def edit
        @food = Food.find(params[:id])        
    end
    
    def index
        @foods = Food.all
        
        respond_to do |format|
            format.html { render 'index' }
            format.json { render json: @foods}
        end
    end
    
    def create
        
        @food = Food.new(food_params)
        if @food.save
        flash[:success] = "Successfully create food"
        redirect_to @food
        else
            render 'new'
        end        
    end
    
    def show
        @food = Food.all
    end
    
    def update
        @food = Food.find(params[:id])
        if @food.update(food_params)
            redirect_to @food
        else
            render 'edit'
        end
    end
    
    
    private
    
    def food_params
        params.require(:food).permit(:foodlist, :quantity)
    end
end
