Rails.application.routes.draw do
  resources :donated_books
  resources :books
  resources :users
  post "/auth", to: "auth#create"
  get "/current_user", to: "auth#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
