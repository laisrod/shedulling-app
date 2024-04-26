Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :schedules
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "schedules#index"
end
