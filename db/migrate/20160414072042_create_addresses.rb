class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :addressable_id
      t.string :addressable_type
      t.string :door_no
      t.string :street_one
      t.string :street_two
      t.string :city
      t.string :state
      t.string :country
      t.timestamps null: false
    end
  end
end
