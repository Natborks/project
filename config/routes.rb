Rails.application.routes.draw do

  root to: 'users#new'
  get 'static_pages/thanks'
  get 'static_pages/terms'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :users
end
