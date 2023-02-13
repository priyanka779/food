class Payment < ApplicationRecord
	belongs_to :user
	belongs_to :order
	has_many :payment_histories
end
