class Product < ApplicationRecord
	# Product model has many orders
	has_many :orders
end
