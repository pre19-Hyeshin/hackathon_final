Rails.application.routes.draw do
  resources :farms
  devise_for :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/farm' => 'posts#farm'
  post 'posts/:post_id/likes' => 'likes#create'
  root 'posts#index'
  
  
  
end
