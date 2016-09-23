class CreateLcos < ActiveRecord::Migration
  def change
    create_table :lcos do |t|
      t.string :mso_name
      t.string :lco_name
      t.string :lco_code
      t.integer :mobile_no,:limit => 5
      t.string :email_id

      t.timestamps null: false
    end
  end
end
