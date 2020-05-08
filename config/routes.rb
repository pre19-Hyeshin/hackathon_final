Rails.application.routes.draw do
  resources :farms
  devise_for :users
  
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  post "posts/sell"

  post 'posts/:post_id/likes' => 'likes#create'
  root 'posts#index'
 
  get '/recipe' => 'posts#recipe'

  get '/sell' => 'posts#sell'
  root 'posts#index'
 
  get '/recipe' => 'posts#recipe'

  get '/sell' => 'posts#sell'
  get '/farm' => 'posts#farm'
end
