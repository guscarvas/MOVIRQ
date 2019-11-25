class AddDiasToQuadra < ActiveRecord::Migration[6.0]
  def change
    add_column :quadras, :seg, :string
    add_column :quadras, :ter, :string 
    add_column :quadras, :qua, :string 
    add_column :quadras, :qui, :string 
    add_column :quadras, :sex, :string 
    
  end
end
