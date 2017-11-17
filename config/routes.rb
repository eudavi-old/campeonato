Rails.application.routes.draw do
  resources :grupos
  resources :participantes
  resources :home, only: [:index]

  match '/admin/participantes' => 'home#index', via: [:get, :post]
  match '/admin/grupos' => 'home#index2', via: [:get, :post]

  root :to => 'grupos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
