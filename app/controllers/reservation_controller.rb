class ReservationsController < ApplicationController
    
        before_action :auth_user
        
          def index
             @user = current_user
            @reservations = Reservation.where(user_id: @user.id)
            @Cruises = Cruise.all
          end
          
          def get_cruise(id)
              cruise = Cruise.find(id)
              cruise.name
          end
        
end