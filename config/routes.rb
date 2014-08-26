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

  get '/login' => "sessions#new"
  post "/login" => "sessions#create"

  delete '/logout' => "sessions#destroy"
  get '/logout' => "sessions#destroy"

  # should we allow comments to show independely?
  # resources :comments do
  #   resources :comments
  # end
end
