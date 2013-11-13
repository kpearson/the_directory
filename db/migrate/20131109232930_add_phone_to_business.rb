class AddPhoneToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :phone_num, :string
    add_column :businesses, :web_site, :string
  end
end
