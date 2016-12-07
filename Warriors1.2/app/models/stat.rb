class Stat < ApplicationRecord
  validates :point, presence: true
  validates :assist, presence: true
  validates :rebound, presence: true
  validates :steal, presence: true
  validates :foul, presence: true
  validates :players, presence: true
  validates :games, presence: true
end
