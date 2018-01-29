class AddOption3ToQuizzes < ActiveRecord::Migration[5.1]
  def change
    add_column :quizzes, :option3, :string
  end
end
