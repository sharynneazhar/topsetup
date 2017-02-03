Rails.application.routes.draw do
  resources :setups

  devise_for :users

  root to: redirect('/setups')

end
