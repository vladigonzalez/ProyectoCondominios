class AddCostToGastospropiedad < ActiveRecord::Migration[5.1]
  def change
    add_reference :gastospropiedads, :cost, foreign_key: true
  end
end
