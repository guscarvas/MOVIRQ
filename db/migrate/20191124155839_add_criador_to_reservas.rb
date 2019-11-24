class AddCriadorToReservas < ActiveRecord::Migration[6.0]
  def change
    add_column :reservas, :criador, :string
  end
end
