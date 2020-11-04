Rails.application.routes.draw do

  root 'home#top'


  
  get 'home/about' 

  
  devise_for :users

  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
  	resources :favorites , only: [:create , :destroy]
  end
  
  resources :homes,only:[:top,:about]
 
 end