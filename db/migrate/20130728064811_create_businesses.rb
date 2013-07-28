class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.integer :suite
      t.boolean :occupied

      t.timestamps
    end
  end
end
