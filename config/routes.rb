Rails.application.routes.draw do
  resources :grupos
  resources :participantes
  resources :home, only: [:index]

  root :to => 'grupos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
