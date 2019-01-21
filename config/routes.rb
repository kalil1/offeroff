Rails.application.routes.draw do
  get 'profile/show'
  get 'profile/index'
resources :products, path: "show"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#home'
end
