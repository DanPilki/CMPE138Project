class Stat < ApplicationRecord
  validates: Point, presence: true
  validates: Assist, presence: true
  validates: Rebound, presence: true
  validates: Steal, presence: true
  validates: Foul, presence: true
  validates: Players, presence: true
  validates: Games, presence: true
end
