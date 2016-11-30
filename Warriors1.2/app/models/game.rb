class Game < ApplicationRecord
	has_many :player_plays
	has_many :players, :through => :player_plays
end
