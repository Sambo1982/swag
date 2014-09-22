class CreateTeamAssociations < ActiveRecord::Migration
  def change
    create_table :team_associations do |t|
      t.string :team_id
      t.string :user_id

      t.timestamps
    end
  end
end
