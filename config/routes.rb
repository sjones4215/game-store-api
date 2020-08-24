Rails.application.routes.draw do
  resources :reviews
  resources :games
  resources :stores
  post "games", to:"games#create"
  post "stores", to:"stores#create"
end
