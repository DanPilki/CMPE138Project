json.extract! player, :id, :F_name, :L_name, :DoB, :Height, :Weight, :Position, :created_at, :updated_at
json.url player_url(player, format: :json)