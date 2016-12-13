class Order < ApplicationRecord
	# Order model belongs to Product model
	belongs_to :product
	belongs_to :user
end