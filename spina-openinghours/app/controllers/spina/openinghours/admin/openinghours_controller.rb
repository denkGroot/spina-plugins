module Spina
  module Openinghours
    module Admin
      class OpeninghoursController < ::Spina::Admin::AdminController

        before_filter :set_breadcrumb

        layout 'spina/admin/website'

        def index
          @openinghours = [1, 2, 3, 4, 5, 6, 0].map do |day|
            Openinghour.where(day: day).first_or_create
          end
        end

        def edit
          @openinghour = Openinghour.find(params[:id])
          add_breadcrumb I18n.t('date.day_names')[@openinghour.day].capitalize
        end

        def update
          @openinghour = Openinghour.find(params[:id])

          add_breadcrumb I18n.t('date.day_names')[@openinghour.day].capitalize

          if @openinghour.update_attributes(openinghour_params)
            redirect_to spina.openinghours_admin_openinghours_url, notice: "Openingstijden van #{I18n.t('date.day_names')[@openinghour.day]} opgeslagen"
          else
            render :edit
          end
        end

        private

        def set_breadcrumb
          add_breadcrumb "Openingstijden", spina.openinghours_admin_openinghours_path
        end

        def openinghour_params
          params.require(:openinghour).permit(:start_time, :end_time)
        end

      end
    end
  end
end
