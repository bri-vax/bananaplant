class TableRetraits < ActiveRecord::Migration[5.2]
  def change
    create_table :retraits
    add_column :retraits, :pre_balance , :decimal
    add_column :retraits , :montant_retrai , :decimal
    add_reference :retraits, :users, foreign_key: true
    
  end
end
