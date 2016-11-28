Rails.application.routes.draw do
  get 'welcome/home'
  get 'players/sc'
  get 'players/andersonvarejao'
  get 'players/damianjones'
  get 'players/davidwest'
  get 'players/dg'
  get 'players/ianclark'
  get 'players/iggy'
  get 'players/javalemcgee'
  get 'players/kd'
  get 'players/kevonlooney'
  get 'players/kt'
  get 'players/mcadoo'
  get 'players/patrickmccaw'
  get 'players/shaunlivingston'
  get 'players/zaza'
  get 'login/name'

  root 'welcome#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
