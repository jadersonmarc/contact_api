Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  as :user do
    post "api/registrations" => "api/registrations#create", as: "create_registrations"
    post "api/sessions" => "api/sessions#create", as: "new_session"
  end

  namespace :api do
    resources :sessions, only: [:new]
    resources :registrations, only: [:create]
    namespace :contacts, path: "/" do
      resources :contacts do
      end
    end
    namespace :addresses, path: "/" do
      resources :addresses do
        collection do
          get :state
          get :city
          get :post_code
        end
      end
    end
  end

  root to: "api/contacts/contacts#index"

  get 'health', to: 'health#index'


end