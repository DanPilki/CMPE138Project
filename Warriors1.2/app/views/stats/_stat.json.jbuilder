json.extract! stat, :id, :point, :assist, :rebound, :steal, :foul, :players_id, :games_id, :created_at, :updated_at
json.url stat_url(stat, format: :json)