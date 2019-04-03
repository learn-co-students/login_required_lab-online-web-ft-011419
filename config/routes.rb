Rails.application.routes.draw do
  get '/show' => 'secrets#show'
  get '/login' => 'sessions#new'
  get '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
