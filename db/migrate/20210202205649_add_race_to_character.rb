class AddRaceToCharacter < ActiveRecord::Migration[6.1]
  def change
    add_reference :characters, :race, null: true, foreign_key: true
  end
end
