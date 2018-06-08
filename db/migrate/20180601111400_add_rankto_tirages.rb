class AddRanktoTirages < ActiveRecord::Migration[5.2]
  def change
    add_column :grilles , :gain , :decimal
    add_column :tirages , :rank1 , :integer
    add_column :tirages , :rank2 , :integer
    add_column :tirages , :rank3 , :integer
    add_column :tirages , :rank4 , :integer
    add_column :tirages , :rank5 , :integer
    add_column :tirages , :rank6 , :integer
    add_column :tirages , :rank7 , :integer
    add_column :tirages , :rank8 , :integer
    add_column :tirages , :rank9 , :integer
    add_column :tirages , :rank10 , :integer
    add_column :tirages , :rank11 , :integer
    add_column :tirages , :rank12 , :integer
    add_column :tirages , :rank13, :integer
    add_column :tirages , :rank14 , :integer
    add_column :tirages , :rank15 , :integer
    add_column :tirages , :rank16 , :integer
    add_column :tirages , :rank17 , :integer
    add_column :tirages , :rank18 , :integer
  end
end
