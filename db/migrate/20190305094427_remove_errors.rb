class RemoveErrors < ActiveRecord::Migration[5.2]
  def up
    remove_column :items, :category_id
    drop_table :categories
  end
end
