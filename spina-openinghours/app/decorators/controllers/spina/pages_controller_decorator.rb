module Spina
  PagesController.class_eval do

    private

    def openinghours
      Openinghours::Openinghour.all.sort_by { |openinghour| [1, 2, 3, 4, 5, 6, 0].index(openinghour.day) }
    end
    helper_method :openinghours

  end
end
