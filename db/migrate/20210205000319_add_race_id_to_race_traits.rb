class AddRaceIdToRaceTraits < ActiveRecord::Migration[6.1]
  def change
    add_column :race_traits, :race_id, :integer
    add_foreign_key :race_traits, :races
  end
end
