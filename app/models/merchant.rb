class Merchant < ApplicationRecord
	validates :name, :address, presence: true
end
