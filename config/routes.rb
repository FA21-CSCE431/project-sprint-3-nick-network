Rails.application.routes.draw do
  get 'contact/index'
  resources :products
  resources :meetings
  get 'about_us/Index'
  resources :events
  get 'landing/Index'
  root 'landing#Index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
