Rails.application.routes.draw do
  resources :songs
  
  root 'songs#index'
  get '/index' => 'songs#index'
end