Kumagawa::Application.routes.draw do
  root 'courses#index'
  resources :organizations
  resources :certificates
  resources :outlet_controls
  resources :topics
  resources :vieweds
  resources :educations
  resources :courses
  devise_for :users
  resources :users
end
