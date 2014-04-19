class CreateCocs < ActiveRecord::Migration
  def change
    create_table :cocs do |t|
      t.string :Name
      t.string :Roll
      t.integer :Marks
      t.integer :Total
      t.decimal :Percentage, precision: 12, scale: 2
      t.string :Branch

      t.timestamps
    end
  end
end
