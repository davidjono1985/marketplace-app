class ItemsController < ApplicationController

    def index
        @items = Item.all

    end
   

    def new
        @items = Item.new
    end


    def all
        @items = Item.all 
    end

    def create
      
        @items = Item.new(items_params)

        if @items.valid? && @items.save
        #if its a post you do a redirect if its a view you do a render
        redirect_to items_path
        else
        render :new

        end
    end 

    def show
        @items = Item.find(params[:id])
    end

    def edit
        @items = Item.find(params[:id])
    
    end

    def update
        @items = Item.find(params[:id])

        @items.update!(items_params)
        if @items.valid? && @items.save
            redirect_to items_path
        else
            render :edit
        end
    end

    def destroy
        Item.destroy(params[:id])
        redirect_to items_path
    end

    
    #anything bleow this is private and the user will not see it
    private
    def items_params
    params.require(:items).permit(:name, :category, :colour, :texture, :days_to_cultivate, :price, :user_id)
    end



end