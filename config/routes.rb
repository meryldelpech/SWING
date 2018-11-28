Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :talents do
    resources :reservations, only: [:new, :create]
  end
  resources :reservations, except: [:new, :create, :index] do
    collection do
      get 'index_client', to: "reservations#index_client"
      get 'index_talent', to: "reservations#index_talent"
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
