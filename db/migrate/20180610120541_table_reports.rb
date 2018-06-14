class TableReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports
    add_column :reports , :r_rank1 , :integer
    add_column :reports , :r_rank2 , :integer
    add_column :reports , :r_rank3 , :integer
    add_column :reports , :r_rank4 , :integer
    add_column :reports , :r_rank5 , :integer
    add_column :reports , :r_rank6 , :integer
    add_column :reports , :r_rank7 , :integer
    add_column :reports , :r_rank8 , :integer
    add_column :reports , :r_rank9 , :integer
    add_column :reports , :r_rank10 , :integer
    add_column :reports , :r_rank11 , :integer
    add_column :reports , :r_rank12 , :integer
    add_column :reports , :r_rank13, :integer
    add_column :reports , :r_rank14 , :integer
    add_column :reports , :r_rank15 , :integer
    add_column :reports , :r_rank16 , :integer
    add_column :reports , :r_rank17 , :integer
    add_column :reports , :r_rank18 , :integer
  end
end
