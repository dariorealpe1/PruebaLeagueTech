class AddCategoryId < ActiveRecord::Migration[6.1]
  def change
  	add_column :products, :categoryId, :integer
  end
end
