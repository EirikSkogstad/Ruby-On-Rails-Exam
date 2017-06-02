Rails.application.routes.draw do

  # get 'movie/index'
  get 'movie/:imdb' => 'movie#index'
  post 'movie/:imdb' => 'movie#add'
  get 'profile/index', to: 'profile#index', as: 'profile'
  get 'error_pages/user_not_logged_in', to: 'error_pages#user_not_logged_in', as: 'user_not_logged_in'

  get 'session/logout', to: 'sessions#logout', as: 'logout_session'
  post 'session/create', to: 'sessions#create', as: 'create_session'

  get 'imdb_top250/:id' => 'imdb_top_250s#show'

  root 'pages#front_page'

  controller :pages do
    get :front_page
    get :filter_page
  end

  resources :imdb_top250s, only: [:index, :show]
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
