Rails.application.routes.draw do
  get '/show' => 'secrets#show'

  get '/login' => 'sessions#new'

  get '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
