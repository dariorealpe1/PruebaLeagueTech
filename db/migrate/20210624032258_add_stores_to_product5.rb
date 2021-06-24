class AddStoresToProduct5 < ActiveRecord::Migration[6.1]
  def change
  	add_column :products, :storesId, :text, array: true
  end
end
