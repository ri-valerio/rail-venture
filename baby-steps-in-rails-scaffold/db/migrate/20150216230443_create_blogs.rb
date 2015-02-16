class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :description
      t.integer :num_followers

      t.timestamps
    end
  end
end
