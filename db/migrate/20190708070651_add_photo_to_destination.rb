class AddPhotoToDestination < ActiveRecord::Migration[5.2]
  def change
    add_column :destinations, :photo, :text
  end
end
