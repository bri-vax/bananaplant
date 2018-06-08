class CreateTirages < ActiveRecord::Migration[5.2]
  def change
    create_table :tirages do |t|
      t.string :t_num1
      t.string :t_num2
      t.string :t_num3
      t.string :t_num4
      t.string :t_num5
      t.string :t_exp1
      t.string :t_exp2
      t.date :date_tirage

      t.timestamps
    end
  end
end
