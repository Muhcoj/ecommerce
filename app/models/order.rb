class Order < ApplicationRecord
	# Order model belongs to Product model
	belongs_to :product
end