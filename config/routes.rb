Rails.application.routes.draw do
  
  
  post 'comments/create'
  
  
  
  
  devise_for :users, controllers: { registrations: "users/registrations" } # This handle all the Login, Log up, Log out and Forget password problem.
  devise_scope :user do
    get "sign_up", to: "devise/registrations#new"
    get "sign_in", to: "devise/sessions#new"
    get "sign_out", to: "devise/sessions#destroy"
    
    authenticate :user do
      get "/test" => "users#test" # For testing UI
    end
    
  end
  
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
  post  "/messages/add_chatbox" => "messages#add_chatbox"
  post "/messages/remove_chatbox" => "messages#remove_chatbox"
  
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "messages#index" # This lead to the timeline page
end
