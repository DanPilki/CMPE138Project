json.extract! game, :id, :home_away, :occasion, :results, :score, :opponents, :win_lose_stat, :created_at, :updated_at
json.url game_url(game, format: :json)