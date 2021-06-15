Rails.application.routes.draw do
  root to: 'pages#home'

  resources :courses do
    resources :readings, :class_materials, :notes
  end

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
