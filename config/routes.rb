Rails.application.routes.draw do
  resources :cocktails, only: [ :index, :new, :show, :create ]
  root 'cocktails#index'
end
