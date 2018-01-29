class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
      t.integer :user_id
      t.string :quiz_number
      t.string :attempted_question

      t.integer :answer1
      t.integer :answer2
      t.integer :answer3
      t.integer :answer4
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.timestamps
    end
  end
end
