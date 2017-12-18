class Product < ApplicationRecord
	belongs_to :merchant, optional: true

	validates :description, :price, presence: true
end
