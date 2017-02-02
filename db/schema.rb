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

ActiveRecord::Schema.define(version: 20170202011724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercises", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "category",   null: false
    t.string   "numsets",    null: false
    t.string   "numreps",    null: false
    t.string   "equipment",  null: false
    t.string   "photo"
    t.string   "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "firstname",         null: false
    t.string   "lastname",          null: false
    t.boolean  "player",            null: false
    t.string   "position"
    t.string   "photo"
    t.string   "video"
    t.string   "fav_pregame_meal"
    t.string   "fav_pregame_drink"
    t.integer  "team_id",           null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["team_id"], name: "index_players_on_team_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "teamname",      null: false
    t.string   "coach",         null: false
    t.string   "schoolname",    null: false
    t.string   "streetaddress", null: false
    t.string   "town",          null: false
    t.string   "state",         null: false
    t.string   "zip",           null: false
    t.string   "img"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "fname",                               null: false
    t.string   "lname",                               null: false
    t.string   "username",                            null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "workexs", force: :cascade do |t|
    t.integer  "exercise_id", null: false
    t.integer  "workout_id",  null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["exercise_id"], name: "index_workexs_on_exercise_id", using: :btree
    t.index ["workout_id"], name: "index_workexs_on_workout_id", using: :btree
  end

  create_table "workouts", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "frequency",  null: false
    t.integer  "player_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_workouts_on_player_id", using: :btree
  end

end
