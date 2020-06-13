Rails.application.routes.draw do
  resources :users, only:[:create, :index]
  resources :jobs, only:[:craete, :index, :show, :update, :destroy]
  resources :tags
  resources :job_tags

  post "/login", to: "auth#login"

  post "/signup", to: "users#create"

  get "/profile", to: "users#profile"

  get "/auto_login", to: "auth#auto_login"
end
