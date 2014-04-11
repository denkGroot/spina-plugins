module Spina
  class ReservationsController < ApplicationController
    before_filter :reservations_captcha, :only => [:create]

    def create
      @reservation = Reservation.new(@captcha.values)
      @reservation.message = @reservation.message

      if @reservation.save
        @reservation.spam! unless @captcha.valid?
        ReservationMailer.reservation(@reservation).deliver unless @reservation.spam
      else
        flash[:notice] = @captcha.error if @captcha.error
        render :failed
      end
    end

    private

    def reservations_captcha
      @captcha = NegativeCaptcha.new(
        secret: Engine.config.NEGATIVE_CAPTCHA_SECRET,
        spinner: request.remote_ip,
        fields: [:email, :message, :name, :date, :time, :persons, :phone],
        params: params
      )
    end
    helper_method :reservations_captcha

  end
end