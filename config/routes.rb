Rails.application.routes.draw do
  get 'reviews/index'
  get 'movies/show'
  get 'staffs/index'
  post 'staffs/search'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
