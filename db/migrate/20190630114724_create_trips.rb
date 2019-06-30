class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :avg_price
      t.string :destination
      t.references :search, foreign_key: true

      t.timestamps
    end
  end
end
