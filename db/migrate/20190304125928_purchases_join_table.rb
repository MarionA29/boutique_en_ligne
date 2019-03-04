class PurchasesJoinTable < ActiveRecord::Migration[5.2]
  def change
    add_reference :purchases, :user, foreign_key: true
    add_reference :purchases, :item, foreign_key: true
  end
end
