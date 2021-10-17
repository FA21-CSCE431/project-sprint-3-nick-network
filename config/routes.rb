Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    get 'users/sign_in', to: 'users/sessions#new', as: :new_user_session
    get 'users/sign_out', to: 'users/sessions#destroy', as: :destroy_user_session
  end
  get 'contact/index'
  resources :products
  resources :meetings
  get 'about_us/Index'
  resources :events
  resources :events do
    member do
      get :delete
    end
  end
  resources :meetings do
    member do
      get :delete
    end
  end
  resources :products do
    member do
      get :delete
    end
  end

  get 'landing/Index'
  root 'landing#Index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
