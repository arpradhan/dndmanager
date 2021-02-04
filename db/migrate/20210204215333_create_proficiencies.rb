class CreateProficiencies < ActiveRecord::Migration[6.1]
  def change
    create_table :proficiencies do |t|
      t.string :key
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
