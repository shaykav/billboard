Rails.application.routes.draw do

  get 'songs/index'

  get 'charts/index'

  get 'charts/:chart_name', to: 'charts#show', as: :chart_show

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
