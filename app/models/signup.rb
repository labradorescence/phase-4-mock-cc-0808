class Signup < ApplicationRecord
    belongs_to :activity
    belongs_to :camper

    # validates :time, numericality: { greater_than_or_equal_to: 0}
    # validates :time, numericality: { less_than_or_equal_to: 23}
  
    validates :age, inclusion: { in: 0..23 }
end
