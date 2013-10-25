Kumagawa::Application.routes.draw do
  root 'application#task'
  resources :certificates
  resources :outlet_controls
  resources :topics
  resources :vieweds
  resources :educations
  resources :courses do
    collection do
      get :my
      get :stats
    end
  end
  devise_for :users
  resources :users, :only => [:index, :show, :edit, :update]
  get '/task' => 'application#task'
  get '/search' => 'courses#search'
end
