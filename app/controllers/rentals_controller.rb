class RentalsController < ApplicationController
    before_action :find_rental, only: [:show]
    
    def index 
        @rentals = Rental.all
    end 

    def show 
    end 

    private 

    def find_rental
        @rental = Rental.find(params[:id])
    end
end
