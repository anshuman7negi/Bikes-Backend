class Bike < ApplicationRecord
    validates :name, :image, :detail, :price, :finance_fee, :option_to_purchase_fee, :duration, presence: true
end
