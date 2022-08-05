Rails.application.routes.draw do
  resources :bikes
  root 'cars#index'
  resources :cars
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
end
