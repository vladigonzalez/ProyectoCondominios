class AddRecintoToGastospropiedad < ActiveRecord::Migration[5.1]
  def change
    add_reference :gastospropiedads, :recinto, foreign_key: true
  end
end
