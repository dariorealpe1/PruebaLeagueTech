class AddProductStore1 < ActiveRecord::Migration[6.1]
  def change
  	add_column :stores, :productsId, :text, array: true
  end
end
