Rails.application.routes.draw do
  get 'info', to: 'welcome#index'
  root 'persons#index'

  resources :persons do
  	collection { post :import }
  end
end
