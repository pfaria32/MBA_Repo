Rails.application.routes.draw do
  resources :notes
  resources :class_materials
  resources :readings
  resources :courses
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

end
