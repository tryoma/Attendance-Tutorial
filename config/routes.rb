Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#top'
  get '/signup', to: 'users#new'

  # ログイン機能
  post   '/login', to: 'sessions#create'
  get    '/login', to: 'sessions#new'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users

end