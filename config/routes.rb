Rails.application.routes.draw do
  resources :parts
  resources :setup_images
  resources :setups

  devise_for :users

  root to: redirect('/setups')

end
