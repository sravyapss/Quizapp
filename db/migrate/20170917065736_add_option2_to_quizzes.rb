class AddOption2ToQuizzes < ActiveRecord::Migration[5.1]
  def change
    add_column :quizzes, :option2, :string
  end
end
