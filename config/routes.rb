Rails.application.routes.draw do
 devise_for :users, controllers: {
        registrations: 'users/registrations'
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#home'
  get '/posts', to: 'posts#index'
  get '/posts/new', to: 'posts#new'
  post '/posts', to: 'posts#create'
  resources :users, only: [:show]
  resources :posts, only: [:show,:destroy]

end
