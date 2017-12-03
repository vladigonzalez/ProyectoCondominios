class RemoveIdRecintoFromPropiedads < ActiveRecord::Migration[5.1]
  def change
    remove_column :propiedads, :id_recinto, :string
  end
end
