Rails.application.routes.draw do
  resources :users
  root :to => 'home#index'

  #####
  #user
  #####
  get '/mypage' => 'users#user_my_page', as: :mypage
  get '/login' => 'users#login', as: :login
  get '/logout' => 'users#logout', as: :logout
  # get '/search/:word' => 'Recipes#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
