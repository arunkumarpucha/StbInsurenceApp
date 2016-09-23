class ChangeColumnOfLogins < ActiveRecord::Migration
  def change
  	remove_column :logins,:password,:string
  	add_column :logins,:mobile_no,:integer,:limit => 5
  end
end
