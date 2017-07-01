Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do
    root 'todo_items#index'
    resources :todo_items
    # a bunch of comments describing how to define routes to load page to heorku
  end
  
end
