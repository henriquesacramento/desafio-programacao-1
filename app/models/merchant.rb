class Merchant < ApplicationRecord
	has_many :products

	validates :name, :address, presence: true
end
