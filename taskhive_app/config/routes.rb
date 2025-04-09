Rails.application.routes.draw do
  get "users/new"
  get "users/create"
  resource :session
  resources :passwords, param: :token
  #get "sessions/new"
  get "dashboard/index"
  root "home#index"
  get "/dashboard", to: "dashboard#index"
  get "/calendar", to: "calendar#index", as: :calendar
  get "/calendar/date", to: "calendar#date", as: :date
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :users, only: [:new, :create]
  get 'createAccount', to: 'users#new', as: :createAccount

  resources :tasks, only: [:create]
  get 'calendar/date/:date', to: 'tasks#show', as: 'task_date'
  get 'calendar/date/:date/:id', to: 'tasks#edit', as: 'task_edit'
  patch 'calendar/date/:date/:id', to: 'tasks#update', as: 'task_update'
  delete '/clear_tasks', to: 'tasks#clear_all', as: 'clear_tasks'
  resources :tasks, only: [:create, :destroy]



  # get "home/index" not using this rn
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
