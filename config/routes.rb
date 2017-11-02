Rails.application.routes.draw do

  root to: 'users#new'
  get 'static_pages/thanks'
  get 'static_pages/terms'
  get 'login'  => 'sessions#new' 
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :users
end
