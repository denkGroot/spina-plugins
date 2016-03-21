module Spina
  module Reservations
    module Admin
      class ReservationsController < ::Spina::Admin::AdminController

        before_filter :set_breadcrumb

        layout "spina/admin/website"

        def show
          @reservation = Reservation.find(params[:id])
        end

        def index
          @reservations = Reservation.all
        end

        private

          def set_breadcrumb
            add_breadcrumb "Reserveringen", spina.reservations_admin_reservations_path
          end

          def reservation_params
            params.require(:reservation).permit(:name)
          end

      end
    end
  end
end
