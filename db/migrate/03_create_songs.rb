class CreateSongs < ActiveRecord::Migration[4.2]
    def up
      create_table :songs do |a|
        a.string :name
      end
    end
    
    def down
      drop_table :genres
    end
  end