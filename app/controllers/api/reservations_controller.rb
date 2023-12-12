class Api::ReservationsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
    def display_reservation
        @all_reservations = Reservation.order(created_at: :desc)
        render json: { message: @all_reservations }
      end
    
      def create_reservation
        @reservebike = Reservation.new(reservation_params)
    
        if @reservebike.save
          render json: { message: 'Your car has been reserved' }
        else
          render json: @reservebike.errors, status: :unprocessable_entity
        end
      end

      def delete_reservation 
        @reservebike = Reservation.find(params[:id])

        if @reservebike.destroy
            render json: { message: 'reservation deleted successfully' }
        else
            render json: { error: 'Failed to delete reservation' }, status: :unprocessable_entity
        end
      end
    
      private
    
      def reservation_params
        params.require(:reservation).permit(:city, :date, :bike_id)
      end
end
