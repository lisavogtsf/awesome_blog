AwesomeBlog::Application.routes.draw do

  root to: 'sites#index'
  resources :users do
    resources :posts
  end
  
  resources :users do
    resources :pages
  end

  post '/comments' => "comments#create"
  delete '/comments' => "comments#destroy"
  patch '/comments' => "comments#update"

  get '/login' => "sessions#new"
  post "/login" => "sessions#create"

  delete '/logout' => "sessions#destroy"
  get '/logout' => "sessions#destroy"

  # should we allow comments to show independely?
  # resources :comments do
  #   resources :comments
  # end
end
