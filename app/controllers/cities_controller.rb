class CitiesController < ApplicationController
    #check if the period is Admin
    before_action :auth_admin    
    def index
        @cities = City.all
    end
    
    def new
        
        @city =  City.new
        
    end
    
    def create
        @city = City.new(params[:city].permit(:name, :country, :photo))
        if @city.save
            redirect_to cities_path
        else
            render 'new'
        end
        
    end
    
    #destroy account
    def destroy
        city = City.find(params[:id])
        city.destroy
        redirect_to cities_path
    end
        
end