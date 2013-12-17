class Category < ActiveRecord::Base
	has_and_belongs_to_many :businesses

    # For nested attributes
    # has_many :businesses_categories
    # has_many :businesses, through: :businesses_categories
    # accepts_nested_attributes_for :businesses
    # accepts_nested_attributes_for :businesses_categories

end
