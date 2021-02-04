class CreateRaceTraits < ActiveRecord::Migration[6.1]
  def change
    create_table :race_traits do |t|
      t.string :key
      t.string :name
      t.string :description
      t.json :trait

      t.timestamps
    end
  end
end
