class OrderProduct < ApplicationRecord
	belongs_to :product
	belongs_to :user
	enum payment: {クレカ:0,銀行:1}
end
