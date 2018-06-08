class AddLimitToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fullname, :string
    add_column :users, :phone_number, :string
    add_column :users, :jouer_grilles , :integer
    add_column :users, :max_grilles , :integer
    add_column :users, :gain_grilles , :integer
  end
end
