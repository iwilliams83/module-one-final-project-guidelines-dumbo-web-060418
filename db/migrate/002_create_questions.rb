class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :content
			t.string :answer1
			t.string :answer2
			t.string :answer3
			t.string :answer4
			t.integer :quiz_id
    end
  end
end
