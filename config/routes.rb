Rails.application.routes.draw do
  get 'talents/index'
  get 'talents/show'
  get 'talents/new'
  get 'talents/create'
  get 'talents/edit'
  get 'talents/update'
  get 'talents/destroy'
  get 'reservations/index'
  get 'reservations/show'
  get 'reservations/new'
  get 'reservations/create'
  get 'reservations/edit'
  get 'reservations/update'
  get 'reservations/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
