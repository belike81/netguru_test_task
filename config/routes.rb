Rails.application.routes.draw do
  root to: 'visitors#index'

  devise_for :users
  resources :students do
    get :subjects
  end

  resources :teachers

  get 'reports/subjects', to: 'reports#subjects', as: :report_subjects
  get 'visitors', to: 'visitors#index'
end
