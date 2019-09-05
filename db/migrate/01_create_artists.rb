class CreateArtists < ActiveRecord::Migration[4.2]
    def up
      create_table :artists do |a|
        a.string :name
      end
    end
    
    def down
      drop_table :artists
    end
  end