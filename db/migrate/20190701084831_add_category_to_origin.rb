class AddCategoryToOrigin < ActiveRecord::Migration[5.2]
  def change
    add_column :origins, :category, :integer
  end
end
