class CreateSolicitacaoPontuals < ActiveRecord::Migration[6.0]
  def change
    create_table :solicitacao_pontuals do |t|
      t.text :Solicitação

      t.timestamps
    end
  end
end
