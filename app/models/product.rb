 class Product < ApplicationRecord
	has_many :order_items, dependent: :destroy
	has_many :orders, through: :order_items
	has_many :invoices, through: :order_items
	belongs_to :category
	belongs_to :brand
	has_many :reviews
	has_one_attached :image
	has_many_attached :multiple_images
	validates :new_price, numericality: {less_than_or_equal_to: :price,message: "New price less than old price"}, presence: true

	def self.search(search)
		if search
			where('name LIKE ?', "%#{search}%")
		else
			all
		end
	end
end
