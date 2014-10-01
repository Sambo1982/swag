class Integration < ActiveRecord::Base
	belongs_to :team

	validates :api_key, presence: true, length: { maximum: 75 }
	validates :team_id, presence: true
	validates :provider, presence: true, length: { maximum: 75 }


end
