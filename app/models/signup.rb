class Signup < ApplicationRecord
    belongs_to :camper 
    belongs_to :activity, dependent: :destroy

    validates :time, numericality: {greater_than: 0, less_than_or_equal_to:23}
end
