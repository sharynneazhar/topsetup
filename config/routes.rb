Rails.application.routes.draw do
  resources :categories
  resources :parts
  resources :setup_images
  resources :setups do
    resources :form_steps, controller: 'form_steps'
  end

  devise_for :users

  root 'setups#home'

end
