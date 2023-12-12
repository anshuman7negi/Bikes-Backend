class Reservation < ApplicationRecord
    belongs_to :bike

    validates :city, presence: true
    validates :date, presence: true
    validates :bike_id, presence: true
end
