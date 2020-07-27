Rails.application.routes.draw do
  resources :instructors
  resources :students
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: 'public#index', as: "home"

  # SIGNUP
  # get '/student/signup', to: "student#signup", as: "student_signup"
  get '/instructor/signup', to: "instructor#signup", as: "instructor_signup"
end
