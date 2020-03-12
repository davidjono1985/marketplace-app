class ItemsController < ApplicationController

    def index

        @items = Item.all 
    end
   

    def new
        @items = Item.new
    end


    def dashboard
        @items = current_user.items
     end

    def show
        @items = Item.find(params[:id])
        @can_add = !Order.contains?(current_user, @items) if user_signed_in?
    end

    def add
        @items = Item.find(params[:id])
        current_user.items.push(@items)
        if current_user.save
            flash[:notice] = "Added New Item"
            redirect_to items_path
        else
            flash[:alert] = "Oops! There was a problem adding that Item"
            redirect_back(fallback_location: all_items_path)
        end
    end

    def remove
        @items = Item.find(params[:id])
        current_user.items.destroy(@items)
        flash[:notice] = "Item was removed from your list"
        redirect_to items_path
    end



    def create
      
        @items = Item.new(items_params)
        @items.user_id = current_user.id
        @items.picture.attach(params[:item][:picture])

        if @items.valid? && @items.save
        #if its a post you do a redirect if its a view you do a render
        redirect_to items_path
        else
        render :new

        end
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
    params.require(:item).permit(:name, :category, :colour, :texture, :days_to_cultivate, :price)
    end



end