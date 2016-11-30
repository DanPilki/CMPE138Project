class Stat < ApplicationRecord
  has_many :games
  has_many :players

	has_many :stats
end
