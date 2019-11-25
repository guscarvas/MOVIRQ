class AddArraysToQuadra < ActiveRecord::Migration[6.0]
  def change
    # 17 , 18, 19, 20,
    add_column :quadras, :esportes, :string
    # [17,1730,18,1830,19,1930,20,2030,21]
    # add_column :quadras, :seg, :string, array: true, default: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago']
    # add_column :quadras, :ter, :string, array: true, default: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago']
    # add_column :quadras, :qua, :string, array: true, default: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago']
    # add_column :quadras, :qui, :string, array: true, default: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago']
    # add_column :quadras, :sex, :string, array: true, default: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago']
    #Ex:- :default =>'Vago'
  end
end
