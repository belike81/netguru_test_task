Rails.application.routes.draw do
  get 'payments/index'

  root to: 'visitors#index'

  devise_for :users
  resources :students do
    get :subjects
  end

  resources :teachers do
    get :subjects
  end

  resources :payments

  get 'reports/subjects', to: 'reports#subjects', as: :report_subjects
  get 'visitors', to: 'visitors#index'
end
