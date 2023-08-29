Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/airports', to: 'airports#index'
  get '/airports', to: 'airports#show'
  get '/airports/:id', to: 'airports#show'

  get '/planes', to: 'planes#index'
end
