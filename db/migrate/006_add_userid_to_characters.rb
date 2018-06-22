class AddUseridToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :user_id, :integer
    add_column :quizzes, :user_id, :integer
  end
end
