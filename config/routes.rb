Rails.application.routes.draw do
  root "sessions#index"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
 
  resources :trainings
  resources :obstracles
  resources :courses
  resources :dogs
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
