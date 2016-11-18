Rails.application.routes.draw do
  resources :songs
  resources :playlists
  get 'playlists/index'

  get 'playlists/show'

  get 'playlists/create'

  get 'playlists/delete'

  get 'playlists/update'

  get 'playlists/edit'

  root 'welcome#home'
  get 'welcome/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
