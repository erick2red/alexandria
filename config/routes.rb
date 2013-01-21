Alexandria::Application.routes.draw do
  devise_for :users

  resources :loans
  resources :users

  resources :books do
    resources :comments
  end


  root :to => "books#index"

  # See how all your routes lay out with "rake routes"
end
