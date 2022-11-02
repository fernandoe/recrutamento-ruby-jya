Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post 'events', to: 'events#create', controller: 'evets'

  get 'issues', to: 'issues#show', controller: 'issues'

  # resources :issues
end
