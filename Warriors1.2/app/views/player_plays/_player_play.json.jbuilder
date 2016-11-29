json.extract! player_play, :id, :players_id, :games_id, :name, :created_at, :updated_at
json.url player_play_url(player_play, format: :json)