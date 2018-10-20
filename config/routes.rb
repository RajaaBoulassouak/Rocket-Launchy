Rails.application.routes.draw do
  root 'welcome#index'
  resources :launches, only: [:index]
end
