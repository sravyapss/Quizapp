class AddOption1ToQuizzes < ActiveRecord::Migration[5.1]
  def change
    add_column :quizzes, :option1, :string
  end
end
