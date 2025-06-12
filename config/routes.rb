Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "users#index"

  # get '/home' => 'users#content', as: :user_content

  root "home#index"
  get '/home/link_content', to: 'home#link_content', as: :home_link_content
  get '/home/form_content', to: 'home#form_content', as: :view_home_form_content
  post '/home/form_content', to: 'home#form_content', as: :home_form_content
  get '/home/src_content', to: 'home#src_content', as: :home_src_content
  post '/home/stream_content', to: 'home#stream_content', as: :home_stream_content
end
