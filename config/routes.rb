Rails.application.routes.draw do
  resources :messages
  devise_for :users
  devise_for :admins
  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
