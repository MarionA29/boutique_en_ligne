class RemovePurchases < ActiveRecord::Migration[5.2]
  def up
    drop_table :purchases
  end
end
