Rails.application.routes.draw do
  resources :contracts
  resources :organizations
  resources :freelancers

  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
