Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/home'
  get 'welcome/sc'

  root 'welcome#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
