Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post 'events', to: 'events#create', controller: 'events'

  get '/issues/:identifier/events', to: 'issues#issues', controller: 'issues'

  # GET /issues/1000/events
  # resources :issues
end
