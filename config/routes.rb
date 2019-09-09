Rails.application.routes.draw do
  devise_for :users
  get 'main/index'
  get 'arguments', to: redirect('/')
  post 'arguments', to: 'main#arguments'
  post 'arguments/result', to: 'main#result'
  get 'persons/profile', as: 'user_root'
  
  root 'main#index'
end
