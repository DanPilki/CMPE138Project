class Player < ApplicationRecord
	has_many :player_plays
	has_many :games, :through => :player_plays
end
