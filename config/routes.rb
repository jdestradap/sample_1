IppDemo::Application.routes.draw do
  get "company/show"

  post  "login" => "user_sessions#create"
  match "login" => "user_sessions#new", :as => :login
  match "logout" => "user_sessions#destroy", :as => :logout
  
  post  "signup" => "users#create"
  match "signup" => "users#new", :as => :signup
  match "account" => "users#show", :as => :account
  match "account/disconnect" => "users#cancel", :as => :users_cancel
  
  match "intuit/connect" => "intuit#connect", :as => :intuit_connect
  match "intuit/callback" => "intuit#callback", :as => :intuit_callback
  match "intuit/disconnect" => "intuit#disconnect", :as => :intuit_disconnect
  match "intuit/proxy" => "intuit#proxy", :as => :intuit_menu_proxy
  match "intuit/config" => "intuit#oauth_config"
  match "intuit/status" => "intuit#oauth_status"


  match "companies" => "company#index"  
  match "company/:id" => "company#show", :as => :company
  match "company/:id/proxy" => "company#proxy", :as => :company_proxy
  match "company/:id/customers" => "company#customers", :as => :company_customers
  match "company/:id/disconnect" => "company#disconnect", :as => :company_disconnect
  match "company/:id/reconnect" => "company#reconnect", :as => :company_reconnect

  root :to => "home#index"
end
