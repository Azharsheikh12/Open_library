Rails.application.routes.draw do
  
  resources :upcoming_books
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :posts do
    resources :comments
  end  
  
  root to: 'pages#home'
  get '/pages/', to: 'pages#home' 
  
  devise_for :users

  get '/search', to: "posts#search"
  # get '/upcoming_book', to: 'posts#upcoming_book'

  # resources :booksdocs, only: [:index, :new, :create, :destroy]
   # root "booksdocs#index"

#   devise_for :users do
#   get '/users/sign_out' => 'devise/sessions#destroy'
# end
end
