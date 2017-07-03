Rails.application.routes.draw do
  devise_for :users

  resources :users

  root "users#index"
  # patch "users#update"

end
