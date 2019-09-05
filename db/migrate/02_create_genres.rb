class CreateGenres < ActiveRecord::Migration[4.2]
    def up
      create_table :genres do |a|
        a.string :name
      end
    end
    
    def down
      drop_table :genres
    end
  end