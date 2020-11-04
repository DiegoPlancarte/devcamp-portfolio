Rails.application.routes.draw do
  # Create custome paths for devise user routes
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  
  # Create default routes for porfolios, except show
  resources :portfolios, except: [:show] do
    member do
      patch :move
    end
  end
  # Create custome show routes for portfolio
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  # Desconstruct routes for about and contact
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  # Add draft/published toggle to blogs
  resources :blogs do 
    member do
      get :toggle_status
    end
  end

  # Assign path to root directory
  root to: 'pages#home'
end
