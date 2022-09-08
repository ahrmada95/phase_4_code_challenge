class VendorsController < ApplicationController
    def index 
        render json: Vendor.all
    end

    def show
        if(vendor = Vendor.find_by(id: params[:id])) 
            render json: vendor.to_json(methods: [:vendor_sweets])
        else 
            render json: {error: "Vendor not found"}, status: 404
        end
    end
end
