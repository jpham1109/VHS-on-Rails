Rails.application.routes.draw do
  resources :rentals
  resources :movie_genres
  resources :vhs
  resources :movies
  resources :genres
  resources :clients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
