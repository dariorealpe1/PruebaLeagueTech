class AddPrdouctsToStore4 < ActiveRecord::Migration[6.1]
  def change
  	add_column :products, :storesId, :text, array: true
  	serialize :storesId, Array
  end
end
