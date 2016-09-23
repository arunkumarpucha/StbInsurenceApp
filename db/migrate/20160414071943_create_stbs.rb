class CreateStbs < ActiveRecord::Migration
  def change
    create_table :stbs do |t|
      t.string :model
      t.string :stb_no
      t.text :description
      t.integer :subscriber_id
      t.timestamps null: false
    end
  end
end
