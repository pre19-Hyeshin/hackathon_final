Rails.application.routes.draw do
  resources :farms
  devise_for :users
  
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
=======

  get 'farm' => 'posts#farm'

>>>>>>> 3030255d913c2e9eea0db32dc3600d1f57685a22


  post "posts/sell"

<<<<<<< HEAD
=======

>>>>>>> 3030255d913c2e9eea0db32dc3600d1f57685a22
  post 'posts/:post_id/likes' => 'likes#create'
  root 'posts#index'
 
  get '/recipe' => 'posts#recipe'

  get '/sell' => 'posts#sell'
<<<<<<< HEAD
  root 'posts#index'
 
  get '/recipe' => 'posts#recipe'
=======

  get '/index' => 'posts#index'

>>>>>>> 3030255d913c2e9eea0db32dc3600d1f57685a22

  get '/sell' => 'posts#sell'
  get '/farm' => 'posts#farm'
end
