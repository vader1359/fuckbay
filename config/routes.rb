Rails.application.routes.draw do
  resources :posts # Restful routes for posts
  devise_for :users # This handle all the Login, Log up, Log out and Forget password problem.
  resources :users # Restful routes for users
  post "likes/toggle" # For like/unlike a post/users/comments
  get "/test" => "users#test" # For testing UI

  get "/welcome" => "users#welcome"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "users#index" # This lead to the timeline page
end
