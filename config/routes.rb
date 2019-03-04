Rails.application.routes.draw do
  root 'item#index'
  resources :items
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
