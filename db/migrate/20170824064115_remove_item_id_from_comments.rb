class RemoveItemIdFromComments < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :item_id, :integer
  end
end
