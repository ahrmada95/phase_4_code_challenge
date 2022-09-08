class VendorSweetsController < ApplicationController
    
    def create
        if(n_vendor_sweet = VendorSweet.create(vendor_id: params[:vendor_id], sweet_id: params[:sweet_id], price: params[:price]))
        else
            render json: {error: "validation errors"}, status: 422
        end
    end

    def destroy
        destroy_me = VendorSweet.find_by(id: params[:id])

        if(destroy_me)
            destroy_me.destroy
            render json: {}
        else
            render json: {error: "VendorSweet not found"}, status: 404
        end
    end
end
