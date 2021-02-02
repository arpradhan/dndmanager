class AddFieldsToRace < ActiveRecord::Migration[6.1]
  def change
    add_column :races, :asi_str, :int, default: 0
    add_column :races, :asi_dex, :int, default: 0
    add_column :races, :asi_con, :int, default: 0
    add_column :races, :asi_int, :int, default: 0
    add_column :races, :asi_wis, :int, default: 0
    add_column :races, :asi_cha, :int, default: 0
    add_column :races, :size, :string
    add_column :races, :speed, :int
  end
end
