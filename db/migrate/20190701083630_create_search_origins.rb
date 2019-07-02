class CreateSearchOrigins < ActiveRecord::Migration[5.2]
  def change
    create_table :search_origins do |t|
      t.references :origin, foreign_key: true
      t.references :search, foreign_key: true

      t.timestamps
    end
  end
end
