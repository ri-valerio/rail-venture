class CreateUsers < ActiveRecord::Migration

        # | COLUMN TYPES |
	    # |--------------|
	    # | boolean      |
	    # | date         |
	    # | datetime     |
	    # | decimal      |
	    # | float        |
	    # | inte         |
	    # | string       |
	    # | text         |
	    # | time         |

	  # |    COLUM OPTIONS     |
	  # |----------------------|
	  # | :limit => size       |
	  # | :default => value    |
	  # | :null => true/false  |
	  # | :precision => number |
	  # | :scale => number     |


	  #  table id is added automatically
	  #  we can change this by doing:
	  #    	create_table :users, {:id => false} do |t|


  def up
  	create_table :users do |t|
  		t.string "first_name", :limit => 25
  		t.string "last_name", :limit => 50
  		t.string "email", :default => "", :null => false
  		t.string "password", :limit => 40

  		# t.datetime "crated_at"
  		# t.datetime "updated_at"
  		t.timestamps
  	end
  end

  def down
  	drop_table :users
  end

end
