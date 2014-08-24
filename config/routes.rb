AwesomeBlog::Application.routes.draw do

  root to: 'sites#index'
  resources :users do
  	resources :posts
 	end
end
