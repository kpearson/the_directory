class Business < ActiveRecord::Base
	belongs_to :building
	belongs_to :user
	has_and_belongs_to_many :categories

	attr_accessor :name, :suite, :floor

	def initialize(name, options = {})
			@name = self.name
			@local = self.suite options[:suite]
			self.floor = options[:floor]
	end

	def display_name
		 [@name, @local].join(', ')
	end

	def list_biz
		Business.each { |b| b.dislpay_name }
	end

end
