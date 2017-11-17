Rails.application.routes.draw do
  resources :grupos
  resources :participantes

  root :to => 'grupos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
