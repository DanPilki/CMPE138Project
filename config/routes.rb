Rails.application.routes.draw do
  get 'games/index'

  get 'welcome/index'
  get 'welcome/home'
  get "/path/games", to: "games#index", as: "gameslink" 
  root 'welcome#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
