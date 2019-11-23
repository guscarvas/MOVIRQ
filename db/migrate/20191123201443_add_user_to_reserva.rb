class AddUserToReserva < ActiveRecord::Migration[6.0]
  def change
    add_reference :reservas, :user , foreign_key: true
  end
end
