Rails.application.routes.draw do
  devise_for :users
  # get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "pages#home"
  # get "dessins", to: "dessins#index"
  # get "dessins/new", to: "dessins#new"
  # get "dessins/:id/edit", to: "dessins#edit"
  # post "dessins", to: "dessins#create"
  # get "dessins/:id", to: "dessins#show", as: :dessin
  # patch "dessins/:id", to: "dessins#update"
  # delete "dessins/:id", to: "dessins#destroy"
  resources :dessins do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]

end
