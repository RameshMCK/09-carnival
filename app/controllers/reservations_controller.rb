class ReservationsController < ApplicationController
    
        before_action :auth_user
        
          def index
            @reservations = Reservation.all
          end
        
        def new
           @cruises = Cruise.all
           @ships = Ship.all
      end
end