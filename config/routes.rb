Rails.application.routes.draw do
  devise_for :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'Posts/:Post_id/likes' => 'likes#create'
  root 'posts#index'
end
