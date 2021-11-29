class LeaseController < ApplicationController

    def create
        lease = Lease.create(lease_params)
        render json: lease, only: [:id, :rent] 
    end


    # def create <--- do this if you want to return nested data, or just ude a serializer
    #     lease = Lease.create(lease_params)
    #     render json: lease, only: [:id, :rent] , include: {:apartment => {only: :id}}
    # end

    def destroy
        lease = Lease.find(params[:id])
        lease.destroy
        render json: {}

    end

    private

    def lease_params
        params.permit(:rent, :apartment_id, :tenant_id)
    end

end
