class Business < ActiveRecord::Base
	belongs_to :building
	belongs_to :user
	has_and_belongs_to_many :category
end
