Rails.application.routes.draw do
  resources :tri_professor_course_students
  devise_for :users, controllers: { sessions: "users/sessions", registrations: 'users/registrations' }
  resources :student_groups
  resources :courses
  resources :professors
  resources :students
  root 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
