json.extract! players_play, :id, :players_id, :games_id, :created_at, :updated_at
json.url players_play_url(players_play, format: :json)