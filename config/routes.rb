Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  post '/visitor' => 'visitors#create'
  get '/visitor' => 'visitors#index'
  root to: 'visitors#index'
end
