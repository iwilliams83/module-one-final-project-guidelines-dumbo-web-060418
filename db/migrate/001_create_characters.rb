class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :personality
      t.string :name
      t.text :description
    end
  end
end
