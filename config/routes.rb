AwesomeBlog::Application.routes.draw do

  root to: 'sites#index'
  resources :users do
    resources :posts
  end
  
  resources :users do
    resources :pages
  end

  get '/login' => "sessions#new"
  post "/login" => "sessions#create"

  delete '/logout' => "sessions#destroy"
  get '/logout' => "sessions#destroy"


  post "posts/:post_id/comments", to: "comments#create", :as => "post_comments"
  post "posts/:post_id/comments/:id", to: "comments#create", :as => "post_comment"

 get "/users/:user_id/tags/:id", to: "tag_users#show", :as => "tag_user"

end
