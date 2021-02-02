class CreateSubraces < ActiveRecord::Migration[6.1]
  def change
    create_table :subraces do |t|
      t.string :key
      t.string :name
      t.references :race, null: false, foreign_key: true
      t.integer :asi_str, default: 0
      t.integer :asi_dex, default: 0
      t.integer :asi_con, default: 0
      t.integer :asi_int, default: 0
      t.integer :asi_wis, default: 0
      t.integer :asi_cha, default: 0

      t.timestamps
    end
  end
end
