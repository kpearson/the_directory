class AddDefaultFalseToUserAdmin < ActiveRecord::Migration
	change_table :users do |t|
	  t.change_default(:admin, false)
  end
end
