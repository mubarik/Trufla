class Product < ApplicationRecord
  belongs_to :department
  has_and_belongs_to_many :promotions
  default_scope { includes(:promotions)}
end
