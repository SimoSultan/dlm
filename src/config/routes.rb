Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: 'publics#home', as: "home"

  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :instructors
  resources :students
  resources :admins


  get "/lessons", to: "lessons#index", as: "lessons"
  get "/lesson/new", to: "lessons#new", as: "lesson_new"
  get "/lesson/:id", to: "lessons#show", as: "lesson_show"
  get "/lesson/:id/edit", to: "lessons#edit", as: "lesson_edit"
  post "/lessons", to: "lessons#create", as: "lesson_create"
  patch "/lesson/:id", to: "lessons#update", as: "lesson_update"
  delete "/lesson/:id", to: "lessons#destroy", as: "lesson_destroy"

  get "/users", to: "admins#users", as: "users"
  delete "/users/:id", to: "admins#admin_delete_user", as: "admin_delete_user"


end 
