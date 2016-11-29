class PlayersPlay < ApplicationRecord
  belongs_to :players
  belongs_to :games
end
