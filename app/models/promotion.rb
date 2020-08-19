class Promotion < ApplicationRecord
	has_and_belongs_to_many :products
	scope :filter_by_status, -> (status) { where status: status }	
end
