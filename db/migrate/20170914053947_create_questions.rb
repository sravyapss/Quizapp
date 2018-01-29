class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :subgenre_name
      t.string :question1
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.integer :answer1
      t.integer :answer2
      t.integer :answer3
      t.integer :answer4
      t.string :question_type
      t.timestamps
    end
  end
end
