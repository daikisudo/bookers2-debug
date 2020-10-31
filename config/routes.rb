Rails.application.routes.draw do

  root 'home#top'
  get 'home/about' 
  devise_for :users, controllers: {  registrations: 'users/registrations',
                                    sessions: 'users/sessions' }

  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  resources :homes,only:[:top,:about]
 
 end