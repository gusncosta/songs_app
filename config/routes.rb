Rails.application.routes.draw do
  resources :songs
  root 'songs#index'
  get '/search' => 'songs#search'
  get '/title_sort' => 'songs#title_sort'
  get '/index' => 'songs#index'
end