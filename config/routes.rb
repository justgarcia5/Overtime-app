Rails.application.routes.draw do
  devise_for :users
  root to: 'static#homepage'
  # root to: "home#index"
end
