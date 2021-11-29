class ApartmentController < ApplicationController


    def create
     apartment = Apartment.create(apartment_params)
     render json: apartment
    end

    def show
     apartment = Apartment.find(params[:id])
     render json: apartment
    end


    def index
      apartment = Apartment.all
      render json: apartment  

    end


    def update
        apartment = Apartment.find(params[:id])
        apartment.update(apartment_params)
        render json: apartment

    end


    def destroy
        apartment = Apartment.find(params[:id])
        apartment.destroy
        render json: {}
    end

end


private 

def apartment_params
    params.permit(:number)
end

