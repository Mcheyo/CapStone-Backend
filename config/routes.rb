Rails.application.routes.draw do
  resources :reviews
  resources :skills
  resources :projects
  resources :users 
  resources :proposals 
  
  resources :proposals, only: [:index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
