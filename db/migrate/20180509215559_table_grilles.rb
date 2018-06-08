class TableGrilles < ActiveRecord::Migration[5.2]
  def change
    create_table :grilles do |t|
    t.string :num1
    t.string :num2
    t.string :num3
    t.string :num4
    t.string :num5
    t.string :exp1
    t.string :exp2
    t.references :user, foreign_key: true
    t.timestamps
    end
  end
end
