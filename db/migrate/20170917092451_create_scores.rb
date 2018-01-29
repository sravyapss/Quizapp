class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.integer :user_id
      t.integer :score1
      t.integer :score2
      t.integer :score3
      t.integer :score4
      t.timestamps
    end
  end
end
