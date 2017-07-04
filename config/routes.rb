Rails.application.routes.draw do
  resources :doers
  resources :milestones
  resources :goals
  devise_for :users
  resources :users

  # resources :goals do
  #   # end


  root "doers#index"
  # devise_scope :users do
  #  get "/" => 'users/sessions#create'
  # end
  # root "sessions#new"
  # get "all_users" => "users#index"
  # patch "users#update"

end
