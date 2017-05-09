Rails.application.routes.draw do
  get 'my_page/method'

  get 'filter_page/method'

  get 'front_page/method'

  root 'front_page#method'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
