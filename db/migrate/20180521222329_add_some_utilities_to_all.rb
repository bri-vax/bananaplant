class AddSomeUtilitiesToAll < ActiveRecord::Migration[5.2]
  def change
      add_column :users, :balance, :decimal
      add_column :grilles ,:code , :string
      add_reference :grilles, :tirage, foreign_key: true
      add_column :tirages ,:nb_jouer , :integer
  end
end
