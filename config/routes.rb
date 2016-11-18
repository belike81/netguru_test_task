Rails.application.routes.draw do
  devise_for :users
  resources :students do
    get :subjects
  end

  get 'reports/subjects', to: 'reports#subjects'
end
