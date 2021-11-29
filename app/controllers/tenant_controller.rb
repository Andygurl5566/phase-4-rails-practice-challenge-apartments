class TenantController < ApplicationController

    def create
        tenant = Tenant.create(tenant_params)
        render json: tenant
       end
   
       def show
        tenant = Tenant.find(params[:id])
        render json: tenant
       end
   
   
       def index
         tenant = Tenant.all
         render json: tenant 
   
       end
   
   
       def update
        tenant = Tenant.find(params[:id])
        tenant.update(tenant_params)
        render json: tenant
   
       end
   
   
       def destroy
        tenant = Tenant.find(params[:id])
        tenant.destroy
        render json: {}
       end


       private 

       def tenant_params
        params.permit(:name, :age)
       end
   

end
