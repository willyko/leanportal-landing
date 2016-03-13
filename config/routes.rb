Rails.application.routes.draw do
  post '/visitor' => 'visitors#create'
  get '/visitor' => 'visitors#index'
  root to: 'visitors#index'
end
