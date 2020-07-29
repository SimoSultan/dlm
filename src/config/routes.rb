Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: 'publics#index', as: "home"

  resources :instructors
  resources :students
  devise_for :users

end
