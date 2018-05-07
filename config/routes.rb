Rails.application.routes.draw do
  root 'events#index'
  devise_for :users
  resources :users
  resources :events
  post 'events/:id/subscribe', to: 'events#subscribe', as: 'subscribe'
  post 'events/:id/unsubscribe', to: 'events#unsubscribe', as: 'unsubscribe'
end
