Rails.application.routes.draw do

  root 'charts#index'

  get 'charts/index'

  get 'songs/index'

  get 'charts/:chart_name', to: 'charts#show', as: :chart_show

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  resources :songs

end
