class Product < ApplicationRecord
  belongs_to :brand #, optional: true

  scope :cheap_products, -> { where(price: 0..50.00).order(price: :asc) }
  # scope :expensive_products, -> { where(price: 50.01..Float::INFINITY).order(price: :asc) }
  scope :expensive_products, -> { where(price: 50.01..1.0/0.0).order(price: :asc) }

  # def self.cheap_products
  #   where(price: 0..50.00).order(price: :asc)
  # end
end
