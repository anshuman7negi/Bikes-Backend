class Api::BikesController < ApplicationController
   
    skip_before_action :verify_authenticity_token

    def display_bikes
        @bike = Bike.order(created_at: :desc)
        render json: {bikes: @bike}
    end

    def create_bikes 
        @bike = Bike.new(bike_params)

        if @bike.save
            render json: {message: "created succesfully"}, status: :created
        else
            render json: {message: @bike.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def delete_bikes 
        @bike = Bike.find(params[:id])

        if @bike.destroy
            render json: { message: 'Bike deleted successfully' }
          else
            render json: { error: 'Failed to delete bike' }, status: :unprocessable_entity
          end
    end

    private

    def bike_params
        params.require(:bike).permit(:image, :name, :detail, :price, :finance_fee, :option_to_purchase_fee, :duration)
      end
end
