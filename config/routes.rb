Rails.application.routes.draw do
  resources :posts
  devise_for :users
  resources :users
  post "likes/toggle"
  get "/test" => "users#test"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "users#index"
end
