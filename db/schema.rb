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

ActiveRecord::Schema.define(version: 20170622014618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.integer "dog_id"
    t.integer "user_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dwelling_infos", force: :cascade do |t|
    t.integer "application_id"
    t.boolean "has_fencing"
    t.integer "fence_highest_height"
    t.integer "fence_lowest_height"
    t.boolean "has_gates"
    t.boolean "street_access"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "who_has_yard_access"
  end

  create_table "lifestyle_infos", force: :cascade do |t|
    t.integer "application_id"
    t.boolean "allergies"
    t.boolean "reason_companion"
    t.boolean "reason_kids"
    t.boolean "reason_gift"
    t.boolean "reason_other_pet"
    t.boolean "reason_watchdog"
    t.boolean "home_during_day"
    t.string "when_outside"
    t.string "when_inside"
    t.integer "hours_dog_left_alone"
    t.string "where_dog_sleep"
    t.integer "outside_areas"
    t.integer "preferred_level_of_exercise"
    t.string "type_of_dog_food"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "where_dog_stay"
  end

  create_table "owned_pets", force: :cascade do |t|
    t.integer "ownership_history_id"
    t.string "species"
    t.string "breed"
    t.boolean "current"
    t.integer "length_of_ownership"
    t.string "explanation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ownership_histories", force: :cascade do |t|
    t.integer "application_id"
    t.integer "number_of_current_pets"
    t.boolean "allowed_breeding"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ownership_profiles", force: :cascade do |t|
    t.integer "application_id"
    t.boolean "regular_vet"
    t.string "who_grooms"
    t.boolean "wears_collar"
    t.string "experience_level"
    t.string "discipline_style"
    t.boolean "training_obedience_class"
    t.boolean "training_hit"
    t.boolean "training_verbal"
    t.boolean "training_clicker"
    t.string "training_other"
    t.string "dog_walk_style"
    t.boolean "ready"
    t.boolean "invested"
    t.string "move_locally_plan"
    t.string "move_far_plan"
    t.string "move_internationally_plan"
    t.boolean "gu_excessive_barking"
    t.boolean "gu_biting"
    t.boolean "gu_digging"
    t.boolean "gu_moving"
    t.boolean "gu_divorce"
    t.boolean "gu_poor_watchdog"
    t.boolean "gu_distructive"
    t.boolean "gu_financial"
    t.boolean "gu_accidents"
    t.boolean "gu_growls"
    t.boolean "gu_vet_bills"
    t.boolean "gu_shedding"
    t.boolean "gu_allergies"
    t.boolean "gu_new_partner"
    t.boolean "gu_aggressive"
    t.boolean "gu_other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.string "spouse_name"
    t.string "spouse_occupation"
    t.boolean "kids"
    t.string "dwelling_type"
    t.boolean "dwelling_owned"
    t.boolean "landlord_permission"
    t.string "landlord_name"
    t.string "landlord_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.integer "current_application"
  end

end
