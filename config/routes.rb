Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get   'games/:token', to: 'games#show'
  patch 'games/:token', to: 'games#update'
  post  'games/:token/players', to: 'players#create'
end
