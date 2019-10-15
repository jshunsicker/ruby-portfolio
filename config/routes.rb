Rails.application.routes.draw do
  resources :portfolios
  resources :blogs

  #declare route, then map on the right
  get 'about-me', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
