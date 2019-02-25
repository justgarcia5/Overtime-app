Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root to: 'static#homepage'
  root to: "home#index"
end
