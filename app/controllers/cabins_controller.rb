class CabinsController < ApplicationController
     before_action :auth_admin  
     
    def new
        @ship = Ship.find(params[:ship_id])
        @cabin = Cabin.new
      end
    
      def create
        @ship = Ship.find(params[:ship_id])
        @cabin = Cabin.new(params[:cabin].permit(:room, :level))
        @cabin.ship = @ship
    
        #binding.pry
        
        if @cabin.save
          redirect_to @ship
        else
          render 'new'
        end
      end

        
end