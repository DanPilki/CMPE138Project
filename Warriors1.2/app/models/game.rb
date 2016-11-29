class Game < ApplicationRecord
has_many :stats
has_and_belongs_to_many :players
end
