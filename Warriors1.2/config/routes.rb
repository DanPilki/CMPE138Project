Rails.application.routes.draw do
  resources :stats
  resources :games
  resources :opp_teams
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'welcome/index'
  match ':controller(/:action(/:id))', :via => :get

  root 'welcome#index'
end
