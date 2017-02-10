Rails.application.routes.draw do
  resources :categories
  resources :parts
  resources :setup_images
  resources :setups

  devise_for :users

  root 'setups#home'

end
