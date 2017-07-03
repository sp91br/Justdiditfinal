Rails.application.routes.draw do
  devise_for :users

  resources :users


  # devise_scope :user do
  #  root :to => 'devise/sessions#new'
  # end
  # root "sessions#new"
  root "users#index"
  # patch "users#update"

end
