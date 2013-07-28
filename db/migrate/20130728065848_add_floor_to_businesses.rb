class AddFloorToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :floor, :boolean
  end
end
