Rails.application.routes.draw do
  root "home#index"

  get "/dashboard", to: "dashboard#index"
  get "/calendar", to: "calendar#index", as: :calendar
  get "/calendar/date", to: "calendar#date", as: :date

  # Authentication routes
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  # Registration routes
  resources :users, only: [:new, :create]
  get 'createAccount', to: 'users#new', as: :createAccount

  # Passwords (for reset)
  resources :passwords, param: :token

  # Tasks routes
  resources :tasks, only: [:create, :destroy]
  get 'calendar/date/:date', to: 'tasks#show', as: 'task_date'
  delete '/clear_tasks', to: 'tasks#clear_all', as: 'clear_tasks'

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check
end
