class Team < ActiveRecord::Base
	has_many :team_associations, dependent: :destroy
	has_many :users, through: :team_associations

	validates :name, presence: true
	validates :description, presence: true

end
