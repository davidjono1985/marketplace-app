class ItemController < ApplicationController

    def index
        @item = Item.all
    end
    

end
