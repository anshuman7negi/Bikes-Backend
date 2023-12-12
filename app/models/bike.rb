class Bike < ApplicationRecord
    has_many :reservations, dependent: :destroy
    validates :name, :image, :detail, :price, :finance_fee, :option_to_purchase_fee, :duration, presence: true
end
