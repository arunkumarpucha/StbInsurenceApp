class ChangeColumnSubidStbs < ActiveRecord::Migration
  def change
  	remove_column :stbs,:subscriber_id,:integer
  	add_column :stbs,:insurence_id,:integer
  end
end
