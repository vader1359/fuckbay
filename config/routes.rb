Rails.application.routes.draw do
  

  post 'comments/create'

  get "/test" => "users#test" # For testing UI

  devise_for :users # This handle all the Login, Log up, Log out and Forget password problem.
  get "/newsfeed" => "users#newsfeed"
  resources :users do # Restful routes for users
    resources :walls, only: [:index, :create]
  end
  get "/welcome" => "users#welcome"
  

  resources :friendships, only: [:new, :create, :destroy]
  get "/add_friends" => "friendships#new"
  

  resources :posts # Restful routes for posts
  post "likes/toggle" # For like/unlike a post/users/comments

  get "/messages" => "messages#index"
  post "/messages/create" => "messages#create"


  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "users#welcome" # This lead to the timeline page
end
