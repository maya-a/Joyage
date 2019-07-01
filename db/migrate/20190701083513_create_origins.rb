class CreateOrigins < ActiveRecord::Migration[5.2]
  def change
    create_table :origins do |t|
      t.integer :airport_id
      t.string :name
      t.string :city
      t.string :country
      t.string :code
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
