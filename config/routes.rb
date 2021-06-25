Rails.application.routes.draw do
  root to: 'pages#home'

  resources :courses do
    resources :lectures do
      resources :readings, :class_materials
      resources :notes, except: [:destroy]
      delete '/note/destroy/:note_id', to: 'notes#destroy', as: :note_destroy
      get '/download_notes_file', to: 'notes#download_file', as: :notes_download_file
    end
  end



  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
