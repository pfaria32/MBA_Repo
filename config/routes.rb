Rails.application.routes.draw do
  root to: 'pages#home'

  resources :courses do
    resources :lectures do
      resources :readings, :class_materials, :notes
    end
  end

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
