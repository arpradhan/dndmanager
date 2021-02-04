class RenameColumnsOnProficiency < ActiveRecord::Migration[6.1]
  def change
    rename_column :proficiencies, :type, :proficiency_type
  end
end
