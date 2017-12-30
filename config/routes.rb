Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "student_actions#show"

  resource :student_action
  resources :application_forms, only: [:new, :create]
end
