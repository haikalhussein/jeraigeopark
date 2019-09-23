Rails.application.routes.draw do
  resources :room_attachments
  resources :rooms
  resources :room_types
  resources :accomodations
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
