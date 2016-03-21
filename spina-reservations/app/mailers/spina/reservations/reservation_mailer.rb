module Spina
  module Reservations
    class ReservationMailer < ActionMailer::Base

      layout 'spina/email'

      def reservation(reservation)
        @reservation = reservation
        @current_account = Account.first

        mail(
          to: "\"#{@current_account.name}\" <#{ @current_account.email }>",
          from: "\"#{@reservation.name}\" <#{@reservation.email}>",
          subject: "Nieuwe reservering voor #{@reservation.date}"
        )
      end

    end
  end
end
