Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
  get "posts/search", to: "posts#search"
  get "categories/search", to: "categories#search"

  resources :posts, :categories

end
