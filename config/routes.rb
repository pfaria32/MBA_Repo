Rails.application.routes.draw do
  root to: 'pages#home'

  resources :courses do
    resources :lectures do
      resources :readings, except: [:destroy, :show, :index]
      resources :class_materials, except: [:destroy, :show, :index]
      resources :notes, except: [:destroy, :show, :index]
      delete '/note/destroy/:note_id', to: 'notes#destroy', as: :note_destroy
      get '/download_notes_file', to: 'notes#download_file', as: :notes_download_file
    end
  end

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
