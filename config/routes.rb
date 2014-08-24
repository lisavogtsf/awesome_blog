AwesomeBlog::Application.routes.draw do

  root to: 'sites#index'
  resources :users
end
