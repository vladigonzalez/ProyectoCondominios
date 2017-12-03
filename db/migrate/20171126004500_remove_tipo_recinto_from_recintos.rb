class RemoveTipoRecintoFromRecintos < ActiveRecord::Migration[5.1]
  def change
    remove_column :recintos, :tipo_recinto, :string
  end
end
