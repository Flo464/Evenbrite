Rails.application.routes.draw do
  namespace :devise do
    get 'registrations/new'
  end
  devise_for :users
  resources :event
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'event#index'
end