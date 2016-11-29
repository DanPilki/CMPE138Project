Rails.application.routes.draw do
  get 'stats/index'

  get 'games/index'

  get 'welcome/index'
  get 'welcome/home'
  get "/path/stats", to: "stats#index", as: "statslink"
  get "/path/games", to: "games#index", as: "gameslink" 
  root 'welcome#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
