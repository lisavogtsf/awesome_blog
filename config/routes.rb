AwesomeBlog::Application.routes.draw do

  root to: 'sites#index'
  resources :users do
    resources :posts do
      resources :comments do
        resources :comments
      end
    end
  end
  resources :users do
    resources :pages do
    end
  end

  get '/login' => "session#new"
  post "/login" => "session#create"

  delete '/logout' => "session#destroy"
  get '/logout' => "session#destroy"

  # should we allow comments to show independely?
  # resources :comments do
  #   resources :comments
  # end
end
