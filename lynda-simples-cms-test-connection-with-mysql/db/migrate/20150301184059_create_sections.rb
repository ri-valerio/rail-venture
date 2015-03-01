class CreateSections < ActiveRecord::Migration

  # este método faz o que up e down fazem
  # mas só funciona se os comandos forem reversíveis
  def change
    create_table :sections do |t|
    	t.integer "page_id"
    	# same as t.references :page
    	t.string "name"
    	t.integer "position"
    	t.boolean "visible", :default => false
    	t.string "content_type"
    	t.text "content"

      t.timestamps
    end
    add_index "sections", "page_id"
  end

end
