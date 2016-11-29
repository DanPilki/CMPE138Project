json.extract! game, :id, :date, :location, :results, :score, :w-l_stats, :created_at, :updated_at
json.url game_url(game, format: :json)