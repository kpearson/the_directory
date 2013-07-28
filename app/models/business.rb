class Business < ActiveRecord::Base
	belongs_to :building
	has_one :business
	has_and_belongs_to_many :categories
end
