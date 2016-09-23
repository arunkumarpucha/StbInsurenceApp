class CreateInsurences < ActiveRecord::Migration
  def change
    create_table :insurences do |t|
      t.decimal :ins_amt
      t.date    :ins_date
      t.integer :no_of_years
      t.integer :subscriber_id
      t.timestamps null: false
    end
  end
end
