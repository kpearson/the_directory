class AddDiscriptionToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :discription, :string
  end
end
