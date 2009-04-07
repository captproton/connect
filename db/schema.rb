# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090204224420) do

  create_table "registrations", :force => true do |t|
    t.date     "move_date"
    t.text     "first_name"
    t.text     "last_name"
    t.text     "home_phone"
    t.text     "email"
    t.integer  "move_size_id"
    t.integer  "move_from_zip"
    t.text     "move_to_city"
    t.text     "move_to_state"
    t.text     "special_instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
