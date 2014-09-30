class Team < ActiveRecord::Base
	has_many :team_associations, dependent: :destroy
	has_many :users, through: :team_associations
	has_many :integrations, dependent: :destroy

	validates :name, presence: true

end
