Rails.application.routes.draw do
  resources :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: 'publics#home', as: "home"

  resources :instructors
  resources :students

  # resources :lessons
  get "/lessons", to: "lessons#index", as: "lessons"
  get "/lesson", to: "lessons#show_modal", as: "lesson_show_modal"
  get "/lesson/:id", to: "lessons#show", as: "lesson_show"
  get "/lesson/new", to: "lessons#new", as: "lesson_new"
  get "/lesson/:id", to: "lessons#edit", as: "lesson_edit"
  post "/lessons", to: "lessons#create", as: "lesson_create"
  patch "/lesson/:id", to: "lessons#update", as: "lesson_update"
  delete "/lesson/:id", to: "lessons#destroy", as: "lesson_destroy"

  devise_for :users, :controllers => {:registrations => "registrations"}

end 
