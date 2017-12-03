class CreateCosts < ActiveRecord::Migration[5.1]
  def change
    create_table :costs do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
