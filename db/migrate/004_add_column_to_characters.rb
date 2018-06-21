class AddColumnToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :quiz_id, :integer
  end
end
