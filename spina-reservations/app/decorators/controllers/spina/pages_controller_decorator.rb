module Spina
  PagesController.class_eval do

    private

    def reservations_captcha
      NegativeCaptcha.new(
        secret: Engine.config.NEGATIVE_CAPTCHA_SECRET,
        spinner: request.remote_ip,
        fields: [:email, :name, :date, :time, :persons, :phone],
        params: params
      )
    end
    helper_method :reservations_captcha

  end
end