require 'sidekiq/web'

Rails.application.routes.draw do
  get 'messages/index'
  get 'messages/put'
  root 'messages#index'
  mount Sidekiq::Web => '/sidekiq'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
