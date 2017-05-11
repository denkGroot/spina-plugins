module Spina
  module Admin
    class ReservationsController < AdminController
      before_filter :set_breadcrumb

      def show
        @reservation = Reservation.find(params[:id])
      end

      def index
        @reservations = Reservation.all
      end

      private

        def set_breadcrumb
          add_breadcrumb "Reserveringen", spina.admin_reservations_path
        end

        def reservation_params
          params.require(:reservation).permit(:name)
        end
    end
  end
end