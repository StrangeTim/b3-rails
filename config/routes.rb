Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations', sessions: 'users/sessions'
  }
  root 'home#show'
  get '/about', to: 'about#show'
  resources :home, only: [:show, :edit, :update]
  resources :about, only: [:show, :edit, :update]
  resources :artists do
    resources :artworks, except: [:index]
  end
end
