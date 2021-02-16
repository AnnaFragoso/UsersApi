Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user

      get '/login', action: :login, controller: 'authentication'
      post '/login', action: :login_user, controller: 'authentication'
      get '/register', action: :register, controller: 'authentication'
      post '/register/create', action: :create, controller: 'authentication'

    end
  end
end
