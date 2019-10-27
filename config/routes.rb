Rails.application.routes.draw do
  #will bring all the resource routes, except show
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'react-items', to: 'portfolios#react'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  #declare route, then map on the right
  get 'about-me', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
