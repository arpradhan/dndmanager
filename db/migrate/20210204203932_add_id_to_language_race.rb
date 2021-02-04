class AddIdToLanguageRace < ActiveRecord::Migration[6.1]
  def change
    add_column :languages_races, :id, :primary_key
  end
end
