class Signup < ApplicationRecord
    belongs_to :signup
    belongs_to :camper

    validates :time, numericality: { greater_than_or_equal_to: 0}
    validates :time, numericality: { less_than_or_equal_to: 23}
  
end
