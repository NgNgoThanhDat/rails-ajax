Rails.application.routes.draw do
  resources :ponies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "ponies#index"
end
