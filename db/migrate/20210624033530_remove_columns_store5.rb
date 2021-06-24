class RemoveColumnsStore5 < ActiveRecord::Migration[6.1]
  def self.up
  remove_column :stores, :productsId
end
end
