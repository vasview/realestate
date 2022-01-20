Rails.application.routes.draw do
  devise_for :users

  resources :real_estates

  root "main#index"
end
