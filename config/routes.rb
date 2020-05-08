Rails.application.routes.draw do
  resources :farms
  devise_for :users
  
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  get 'farm' => 'posts#farm'
=======


  post "posts/sell"

>>>>>>> 1953736c4467c320b81d3897270f369c88835485
  post 'posts/:post_id/likes' => 'likes#create'
  root 'posts#index'
 
  get '/recipe' => 'posts#recipe'
<<<<<<< HEAD
=======
  get '/sell' => 'posts#sell'
>>>>>>> 1953736c4467c320b81d3897270f369c88835485

end
