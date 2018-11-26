Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'customers#index'

  resource :customers

  resource :persons, only: :create
end
