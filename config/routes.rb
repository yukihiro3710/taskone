Rails.application.routes.draw do
  devise_for :users
  root 'top#index'

  resources :list, only: %i(new create edit update destroy) do
    resources :card, except: %i(index)
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
