Rails.application.routes.draw do
  resources :gastospropiedads
  resources :costs
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :tipo_propiedads

  resources :propiedads

  resources :recintos do
     resources :propiedads
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'recintos#index'

  # Aqui se puede agregar la siguiente funcionalidad
  # resources :tipo_propiedads, only: [:new, :create]
end
