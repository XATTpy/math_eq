Rails.application.routes.draw do
  get 'main/index'
  post 'type', to: 'main#type'
  
  root 'main#index'
end
