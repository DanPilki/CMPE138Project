json.extract! player, :id, :F_name, :L_name, :DOB, :weight, :height, :position, :player_id, :created_at, :updated_at
json.url player_url(player, format: :json)