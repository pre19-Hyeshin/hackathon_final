Rails.application.routes.draw do
  resources :farms
  devise_for :users
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/farm' => 'posts#farm'
  post 'posts/:post_id/likes' => 'likes#create'
  root 'posts#index'
  
<<<<<<< HEAD
  
  
=======
  get '/recipe' => 'posts#recipe'
>>>>>>> 26d93a9286614ad62a753f66b5b245733778de71
end
