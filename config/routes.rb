Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations', sessions: 'users/sessions'
  }
  root 'pages#home'
  get 'about', to: 'pages#about'

  resources :artists do
    resources :artworks, except: [:index]
  end
end
