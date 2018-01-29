class Quiz < ApplicationRecord
  has_many :users
  validates_presence_of :user_id
  validates_presence_of :quiz_number
  validates_presence_of :attempted_question
end
