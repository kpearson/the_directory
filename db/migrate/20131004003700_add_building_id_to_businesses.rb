class AddBuildingIdToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :building_id, :integer
  end
end
