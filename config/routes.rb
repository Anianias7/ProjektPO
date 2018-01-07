Rails.application.routes.draw do
  # for details on the dsl available within this file, see http://guides.rubyonrails.org/routing.html
  root "student_actions#show"

  resource :student_action
  resources :application_forms, only: [:new, :create]
  resources :application_form_adjustments, only: [:new, :create]
  resources :notifications, only: [:show, :index]
end
