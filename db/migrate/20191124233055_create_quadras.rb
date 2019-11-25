class CreateQuadras < ActiveRecord::Migration[6.0]
  def change
    create_table :quadras do |t|
      t.string :name
      t.integer :ordem
      t.integer :atual

      t.timestamps
    end
  end
end
