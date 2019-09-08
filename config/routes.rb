Rails.application.routes.draw do
  get 'main/index'
  get 'arguments', to: redirect('/')
  post 'arguments', to: 'main#arguments'
  post 'arguments/result', to: 'main#result'
  
  root 'main#index'
end
