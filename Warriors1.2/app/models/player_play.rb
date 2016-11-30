class PlayerPlay < ApplicationRecord
	has_and_belongs_to_many :players
	has_and_belongs_to_many :games

	has_many :player_plays
end
