class CreateJoinTableRaceLanguage < ActiveRecord::Migration[6.1]
  def change
    create_join_table :races, :languages do |t|
      # t.index [:race_id, :language_id]
      # t.index [:language_id, :race_id]
    end
  end
end
