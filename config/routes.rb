Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
  resources :socks do
    resources :matches
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 # I think this is just a note from Rails about how to make routes.

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # I don't understand what "as: :rails_health_check" does

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "welcome#index"
  # I think this sets the home page to the welcome page
  # I don't know exactly what "welcome#index" means
end
