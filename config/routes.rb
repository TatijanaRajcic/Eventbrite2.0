Rails.application.routes.draw do
  root 'events#index'
  devise_for :users
  resources :users
  resources :events
  get 'events/:id/subscribe', to: 'events#subscribe', as: 'subscribe'
end
