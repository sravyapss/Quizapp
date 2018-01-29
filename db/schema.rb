# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170917092638) do

  create_table "apps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "customer_id"
    t.integer "question_id"
    t.string "option1"
    t.string "option2"
    t.string "option3"
    t.string "option4"
    t.integer "answer1"
    t.integer "answer2"
    t.integer "answer3"
    t.integer "answer4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "subgenre_name"
    t.string "question1"
    t.string "option1"
    t.string "option2"
    t.string "option3"
    t.string "option4"
    t.integer "answer1"
    t.integer "answer2"
    t.integer "answer3"
    t.integer "answer4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "question_type"
  end

  create_table "quizzes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "user_id"
    t.string "quiz_number"
    t.string "attempted_question"
    t.integer "answer1"
    t.integer "answer2"
    t.integer "answer3"
    t.integer "answer4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "option1"
    t.string "option2"
    t.string "option3"
    t.string "option4"
  end

  create_table "scores", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "user_id"
    t.integer "score1"
    t.integer "score2"
    t.integer "score3"
    t.integer "score4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
