class CreateBazingas < ActiveRecord::Migration
  def change
    create_table :bazingas do |t|
      t.string :title
      t.text :description
      t.integer :num_followers

      t.timestamps null: false
    end
  end
end
