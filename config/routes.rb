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
  get '/turbo_streams', to: 'turbo_streams#index', as: :turbo_streams
  post '/turbo_streams/stream_response', to: 'turbo_streams#stream_response', as: :turbo_stream_response
  get '/turbo_streams/stream_response', to: 'turbo_streams#stream_response', as: :view_turbo_stream_response
  post '/turbo_streams/stream_redirect', to: 'turbo_streams#stream_redirect', as: :turbo_stream_redirect
  post '/turbo_streams/html_redirect', to: 'turbo_streams#html_redirect', as: :turbo_stream_html_redirect
  post '/turbo_streams/stream_400_error', to: 'turbo_streams#stream_400_error', as: :turbo_stream_400_error
  post '/turbo_streams/stream_500_error', to: 'turbo_streams#stream_500_error', as: :turbo_stream_500_error
  get '/turbo_streams/destination', to: 'turbo_streams#destination', as: :turbo_stream_destination

  get '/home/link_content', to: 'home#link_content', as: :home_link_content
  get '/home/form_content', to: 'home#form_content', as: :view_home_form_content
  post '/home/form_content', to: 'home#form_content', as: :home_form_content
  get '/home/src_content', to: 'home#src_content', as: :home_src_content
  post '/home/stream_content', to: 'home#stream_content', as: :home_stream_content
  get '/home/stream_content', to: 'home#stream_content', as: :view_home_stream_content
  get '/home/destination', to: 'home#destination', as: :home_destination
end
