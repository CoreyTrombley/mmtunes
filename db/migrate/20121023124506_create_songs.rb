class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.decimal :price
      t.string :file_name
      t.text :lyrics

      t.timestamps
    end
  end
end
