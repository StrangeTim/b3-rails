Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'

  resources :artists do
    resources :artworks, except: [:index]
  end
end
