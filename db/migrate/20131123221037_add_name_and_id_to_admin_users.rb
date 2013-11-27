class AddNameAndIdToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :name, :string
    add_column :admin_users, :business_id, :integer
  end
end
