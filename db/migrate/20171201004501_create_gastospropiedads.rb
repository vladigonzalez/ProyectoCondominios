class CreateGastospropiedads < ActiveRecord::Migration[5.1]
  def change
    create_table :gastospropiedads do |t|
      t.integer :anho
      t.integer :mes
      t.integer :monto

      t.timestamps
    end
  end
end
