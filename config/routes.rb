Rails.application.routes.draw do
  resources :users
  root :to => 'home#index'

  #####
  #user
  #####
  get '/mypage' => 'users#user_my_page', as: :mypage
  get '/sign_in' => 'users#sign_in', as: :sign_in
  get '/sign_up' => 'users#sign_up', as: :sign_up
  get '/sign_out' => 'users#sign_out', as: :sign_out
  # get '/search/:word' => 'Recipes#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
