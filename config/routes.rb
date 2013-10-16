TraceMyRide::Application.routes.draw do
  resources :attendences
  resources :vehicles
  devise_for :users
  root :to => 'vehicles#index'
end
