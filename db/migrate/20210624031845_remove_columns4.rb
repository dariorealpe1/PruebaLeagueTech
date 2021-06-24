class RemoveColumns4 < ActiveRecord::Migration[6.1]
  def self.up
  remove_column :products, :storesId
end
end
