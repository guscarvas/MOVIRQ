class CreateReservas < ActiveRecord::Migration[6.0]
  def change
    create_table :reservas do |t|
      t.string :modalidade
      t.string :naipe
      t.string :dia
      t.time :inicio
      t.time :termino
      t.integer :odp
      t.integer :ph

      t.timestamps
    end
  end
end
