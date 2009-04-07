class CreateRegistrations < ActiveRecord::Migration
  def self.up
    create_table :registrations do |t|
      t.date :move_date
      t.text :first_name
      t.text :last_name
      t.text :home_phone
      t.text :email
      t.integer :move_size_id
      t.integer :move_from_zip
      t.text :move_to_city
      t.text :move_to_state
      t.text :special_instructions

      t.timestamps
    end
  end

  def self.down
    drop_table :registrations
  end
end
