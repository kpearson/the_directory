class RemoveOccupidFormBusinesses < ActiveRecord::Migration
  def change
  	remove_column :businesses, :occupied, :boolean
  	remove_column :businesses, :floor, :boolean
  end
end
