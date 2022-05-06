Rails.application.routes.draw do
  resources :users

  get 'signup', to: 'user#new', as: 'signup'
  get 'login', to: 'session#new', as: 'login'
  get 'logout', to: 'session#destroy', as: 'logout'

  root 'site#home'
end
