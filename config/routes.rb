Rails.application.routes.draw do
  root  'mexpenses#index'
  resources :mexpenses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
