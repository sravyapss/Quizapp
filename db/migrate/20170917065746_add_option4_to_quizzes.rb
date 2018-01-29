class AddOption4ToQuizzes < ActiveRecord::Migration[5.1]
  def change
    add_column :quizzes, :option4, :string
  end
end
