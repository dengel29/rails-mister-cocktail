Rails.application.routes.draw do
  resources :cocktails, only: [ :index, :show, :new, :create ] do
    resources :doses, only: [ :new, :create ]
  end

  resources :doses, only: [ :destroy ]

end

  # get 'doses/new'

  # get 'doses/create'

  # get 'doses/destroy'

  # root to: 'cocktails#index'

  # get 'ingredients/new', to: 'ingredients#new'

  # # get 'ingredients/create' to:

  # get 'cocktails/index'

  # get 'cocktails/show'

  # get 'cocktails/new'

  # get 'cocktails/create'

  # get 'cocktails/edit'

  # get 'cocktails/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

