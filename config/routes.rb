Rails.application.routes.draw do

  resources :homes
  resources :pages
  resources :users
  get  "user/login",to:'users#login',as:"login_url"
  get  "user/logout",to:"users#dologout"
  post "user/do_login",to:"users#dologin",as:"login_controller"
  root to:"users#login",as:"root"
  get "index.html",to:"homes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
