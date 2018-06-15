class Arrangementkey < ActiveRecord::Migration[5.2]
  def change
   remove_reference :grilles, :tirage, foreign_key: true
   remove_reference :grilles, :user, foreign_key: true
   add_column :grilles , :user_id , :integer
   add_column :grilles , :tirage_id, :integer
  end
end
