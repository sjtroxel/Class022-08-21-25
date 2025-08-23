require 'sidekiq/web'

Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  post '/login', to: 'sessions#create'
  resources :users, only: [:create]
  resources :books

  get '/my_books', to: 'books#my_books'

  resources :notifications, only: [:index]

  mount Sidekiq::Web => '/sidekiq'
end
