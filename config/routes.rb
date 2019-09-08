Rails.application.routes.draw do
  get 'main/index'
  post 'arguments', to: 'main#arguments'
  
  root 'main#index'
end
