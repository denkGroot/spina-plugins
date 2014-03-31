module Spina
  class Review < ActiveRecord::Base
    validates :name, :rating, presence: true
  end
end