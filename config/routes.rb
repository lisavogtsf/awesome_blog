AwesomeBlog::Application.routes.draw do

  root to: 'sites#index'
  resources :users do
    resources :posts do 
      resources :comments do
        resources :comments do
        	resources :comments
        end
      end
    end
  end
end
