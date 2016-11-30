Rails.application.routes.draw do
  resources :stats
  resources :player_plays
  resources :opp_team_games
  resources :games
  resources :players
  resources :opp_teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'welcome/index'
  match ':controller(/:action(/:id))', :via => :get

  root 'welcome#index'
end
