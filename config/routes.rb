Rails.application.routes.draw do
  devise_for :users
  resources :setups

  root to: redirect('/ideas')

end
