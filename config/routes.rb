Rails.application.routes.draw do
  devise_for :users
  resources :users

  # resources :goals do
  #   resources :milestones
  # end


  root "users#index"
  # devise_scope :users do
  #  get "/" => 'users/sessions#create'
  # end
  # root "sessions#new"
  # get "all_users" => "users#index"
  # patch "users#update"

end
