Rails.application.routes.draw do
  get "users/create"
  resources :users
end
