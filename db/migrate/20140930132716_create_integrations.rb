class CreateIntegrations < ActiveRecord::Migration
  def change
    create_table :integrations do |t|
      t.string :api_key
      t.string :team_id
      t.string :provider

      t.timestamps
    end
  end
end
