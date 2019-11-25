class AddQuadraToReservaAceita < ActiveRecord::Migration[6.0]
  def change
    add_column :reserva_aceita, :quadra , :string
  end
end
