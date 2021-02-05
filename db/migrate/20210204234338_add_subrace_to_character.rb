class AddSubraceToCharacter < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :subrace_id, :integer
    add_foreign_key :characters, :subraces
  end
end
