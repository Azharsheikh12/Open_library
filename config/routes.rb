Rails.application.routes.draw do
  
  resources :posts do
    resources :comments
  end  
  
  root to: 'pages#home'
  get '/pages/', to: 'pages#home'
  devise_for :users

  get '/search', to: "posts#search"

  # resources :booksdocs, only: [:index, :new, :create, :destroy]
   # root "booksdocs#index"

#   devise_for :users do
#   get '/users/sign_out' => 'devise/sessions#destroy'
# end
end
