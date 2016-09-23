class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :email_id
      t.integer :mobile_no,:limit => 5
      t.integer :lco_id
      t.timestamps null: false
    end
  end
end
