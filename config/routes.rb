Rails.application.routes.draw do
  get 'reviews/index'
  get 'movies/index'
  get 'staffs/index'
  post 'staffs/search'
  get 'staffs/search'

   
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
