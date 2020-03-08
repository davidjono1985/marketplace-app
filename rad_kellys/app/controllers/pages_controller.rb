class PagesController < ApplicationController

    def index

    end


    def about

    end

    def option

    end

    def profile
        @user = User.find(params[:id])
    end 


end
