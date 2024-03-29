# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150426001521) do

  create_table "developers", force: true do |t|
    t.integer  "topic_ID"
    t.integer  "man_ID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manufacturers", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "priority_conditions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: true do |t|
    t.string   "topicTitle"
    t.string   "intervention"
    t.integer  "phase"
    t.string   "phaseDetails"
    t.string   "comparators"
    t.string   "healthImpact"
    t.string   "patientPopulation"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "priorityConditionID"
  end

end
