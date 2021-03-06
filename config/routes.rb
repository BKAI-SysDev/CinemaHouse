Rails.application.routes.draw do
  namespace :user_controllers, path: "/" do 
    root to: 'home_pages#index'
    namespace :authentications do 
      resource :registrations, only: [:new, :create]
      resource :sessions, only: [:new, :create, :destroy]
    end
  end
end
