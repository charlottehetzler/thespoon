Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  root to: 'pages#home'

  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  post 'restaurants', to: 'restaurants#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
