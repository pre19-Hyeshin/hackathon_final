Rails.application.routes.draw do
  devise_for :users do
     get '/users/sign_out' => 'devise/sessions#destroy'
   end
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 
  post 'posts/:post_id/likes' => 'likes#create'
  root 'posts#index'
end
