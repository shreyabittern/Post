Rails.application.routes.draw do
  devise_for :users
  resources :pages
  resources :postts
  resources :posts do
  	resources :comments
  end
  resources :tests
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
