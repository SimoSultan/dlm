Rails.application.routes.draw do
  resources :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: 'publics#home', as: "home"

  resources :instructors
  resources :students

  patch "/lessons/:id", to: "lessons#update", as: "lesson_update"
  resources :lessons
  
  devise_for :users, :controllers => {:registrations => "registrations"}

end
