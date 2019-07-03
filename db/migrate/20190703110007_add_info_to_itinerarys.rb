class AddInfoToItinerarys < ActiveRecord::Migration[5.2]
  def change
    add_column :itineraries, :info, :text
  end
end
