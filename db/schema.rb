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

ActiveRecord::Schema.define(version: 2019_05_09_124437) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "database_associations_has_and_belongs_to_many_bars", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "database_associations_has_and_belongs_to_many_foo_bars", force: :cascade do |t|
    t.integer "foo_id"
    t.integer "bar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "database_associations_has_and_belongs_to_many_foos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "database_associations_has_many_bars", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "database_associations_has_many_foos", force: :cascade do |t|
    t.integer "bar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_id"], name: "index_database_associations_has_many_foos_on_bar_id"
  end

  create_table "database_associations_has_many_through_bars", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "database_associations_has_many_through_foo_bars", force: :cascade do |t|
    t.integer "foo_id"
    t.integer "bar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "database_associations_has_many_through_foos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "database_associations_has_one_bars", force: :cascade do |t|
    t.integer "foobar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["foobar_id"], name: "index_database_associations_has_one_bars_on_foobar_id"
  end

  create_table "database_associations_has_one_foos", force: :cascade do |t|
    t.integer "bar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_id"], name: "index_database_associations_has_one_foos_on_bar_id"
  end

  create_table "database_associations_has_one_through_bars", force: :cascade do |t|
    t.integer "foobar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["foobar_id"], name: "index_database_associations_has_one_through_bars_on_foobar_id"
  end

  create_table "database_associations_has_one_through_foo_bars", force: :cascade do |t|
    t.integer "foo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["foo_id"], name: "index_database_associations_has_one_through_foo_bars_on_foo_id"
  end

  create_table "database_associations_has_one_through_foos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "database_associations_polymorphic_association_bar1s", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "database_associations_polymorphic_association_bar2s", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "database_associations_polymorphic_association_foos", force: :cascade do |t|
    t.integer "bar_id"
    t.string "bar_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
