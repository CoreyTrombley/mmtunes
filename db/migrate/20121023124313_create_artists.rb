class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.date :dob
      t.string :photo
      t.text :bio

      t.timestamps
    end
  end
end