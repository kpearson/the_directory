class Business < ActiveRecord::Base
	belongs_to :building
	belongs_to :user
	has_and_belongs_to_many :categories
	
	# Association through for nested attributes
    # has_many :businesses_categories
    # has_many :categories, through: :businesses_categories
    # accepts_nested_attributes_for :categories
    # accepts_nested_attributes_for :businesses_categories
end
