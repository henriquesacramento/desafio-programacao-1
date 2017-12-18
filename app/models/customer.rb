class Customer < ApplicationRecord
	validates :name, :last_name, presence: true
end
