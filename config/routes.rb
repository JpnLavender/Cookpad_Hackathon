Rails.application.routes.draw do
  resources :recipes
  resources :users
  root :to => 'home#index'

  #####
  #user
  #####
  get '/mypage' => 'users#user_my_page', as: :mypage
  get '/sign_in' => 'users#sign_in', as: :sign_in
  post '/sign_in_authentication' => 'users#sign_in_authentication'
  get '/sign_up' => 'users#sign_up', as: :sign_up
  get '/sign_out' => 'users#sign_out', as: :sign_out
  get '/recipe_search' => 'recipes#search'
  post '/report' => 'reports#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
