class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :dap_name
      t.string :d_city
      t.string :d_country
      t.string :dap_code
      t.integer :dap_id
      t.float :d_latitude
      t.float :d_longitude
      t.integer :category

      t.timestamps
    end
  end
end
