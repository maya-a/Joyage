class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :avg_price
      t.integer :category
      t.references :search, foreign_key: true
      t.references :destination, foreign_key: true
      t.timestamps
    end
  end
end
