Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  root 'welcome#home'

  mount ActionCable.server => '/cable'

  resources :sessions, only: [:new, :create]

  resources :songs
  resources :playlists




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
