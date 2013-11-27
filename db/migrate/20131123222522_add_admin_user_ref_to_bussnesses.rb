class AddAdminUserRefToBussnesses < ActiveRecord::Migration
  def change
    add_reference :businesses, :admin_user, index: true
  end
end
