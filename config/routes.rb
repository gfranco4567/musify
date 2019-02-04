Rails.application.routes.draw do

  resources :playlists do
      resources :songs, only: [:create, :destroy] do
        member do
          patch 'set_favorite', to: 'songs#set_favorite'
        end
      end
end
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#index'
end
