class ChangeAssociationTableTypes < ActiveRecord::Migration
  def up
    change_column :team_associations, :user_id, :integer
    change_column :team_associations, :team_id, :integer
  end

  def down
    change_column :team_associations, :user_id, :string
    change_column :team_associations, :team_id, :string
  end
end
