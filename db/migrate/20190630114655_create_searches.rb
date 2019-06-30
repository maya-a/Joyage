class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.integer :max_budget
      t.string :origin
      t.date :dep_date
      t.date :ret_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
