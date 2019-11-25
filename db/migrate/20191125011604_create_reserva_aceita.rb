class CreateReservaAceita < ActiveRecord::Migration[6.0]
  def change
    create_table :reserva_aceita do |t|
      t.string :dono
      t.string :esporte
      t.string :naipe
      t.string :inicio
      t.string :fim

      t.timestamps
    end
  end
end
