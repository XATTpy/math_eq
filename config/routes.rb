Rails.application.routes.draw do
  resources :equation

  root 'equation#index'
end
