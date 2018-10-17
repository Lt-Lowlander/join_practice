Rails.application.routes.draw do
  root 'challenges#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :challenges, only: [:index, :show]

  namespace :api do
    namespace :v1 do
      resources :challenges do
        resources :collaborations
        resources :users
      end
    end
  end
end
