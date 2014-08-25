AwesomeBlog::Application.routes.draw do

  root to: 'sites#index'
  resources :users do
    resources :posts do 
      resources :comments do
        resources :comments
      end
    end
  end
  # should we allow comments to show independely?
  # resources :comments do
  #   resources :comments
  # end
end
