Rails.application.routes.draw do
  resources :milestones
  resources :goals
  devise_for :users
  resources :users

  # resources :goals do
  #   # end


  root "users#index"
  # devise_scope :users do
  #  get "/" => 'users/sessions#create'
  # end
  # root "sessions#new"
  # get "all_users" => "users#index"
  # patch "users#update"

end
