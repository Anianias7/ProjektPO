rails.application.routes.draw do
  # for details on the dsl available within this file, see http://guides.rubyonrails.org/routing.html
  root "student_actions#show"

  namespace :student_actions do
  	resource :student_action
  end

  namespace :application_form do
  	resources :application_forms, only: [:new, :create]
  end

  namespace :notification do
  	resources :notifications, only: [:show, :index]
  end
end
