Rails.application.routes.draw do
  #get 'static_pages/landing'

  root to: "static_pages#landing"
  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout

  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
