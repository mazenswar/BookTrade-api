Rails.application.routes.draw do
  resources :users do
    resources :donated_books
  end
  resources :books
  post "/auth", to: "auth#create"
  get "/current_user", to: "auth#show"
  delete '/:id', to: 'books#destroy'
  patch '/:id', to: 'users#update'
  patch '/:id', to: 'donated_books#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
