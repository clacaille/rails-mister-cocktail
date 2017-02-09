Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails, only: [ :index, :new, :show, :create ] do
    resources :doses, only: [ :new, :create ]
  end

  delete 'doses/:id', to: 'doses#destroy'
end
