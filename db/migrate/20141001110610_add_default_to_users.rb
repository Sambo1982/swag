class AddDefaultToUsers < ActiveRecord::Migration
  def change
    add_column :users, :default_team, :string
  end
end
