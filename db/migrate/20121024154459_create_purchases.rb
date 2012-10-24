class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.decimal :price_paid
      t.integer :song_id
      t.integer :user_id

      t.timestamps
    end
  end
end
