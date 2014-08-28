AwesomeBlog::Application.routes.draw do

  resources :passwords
  root to: 'sites#index'
  resources :users do
    resources :posts
    resources :pages
  end

  resources :users do
    resources :pages
  end

  resources :posts do
    resources :comments, only: [:create]
  end

  post "posts/:post_id/comments", to: "comments#create", :as => "post_comments"
  post "posts/:post_id/comments/:id", to: "comments#create", :as => "post_comment"
  # post "comments/:id/comment", to: "comments#create", :as => "comment_comments"

  get '/login' => "sessions#new"
  post "/login" => "sessions#create"

  delete '/logout' => "sessions#destroy"
  get '/logout' => "sessions#destroy"

 get "/users/:user_id/tags/:id", to: "tag_users#show", :as => "tag_user"

end
