Rails.application.routes.draw do
  #devise_for :users
  devise_for :users, controllers: {
  registrations: 'users/registrations'
  }

  #get "/users", to: "users#index"
  #get "/users/:id", to: "users#show", as: :user

  #get "/chats", to: "chats#index"
  #get "/chats/:id", to: "chats#show", as: :chat

  #get "/messages", to: "messages#index"
  #get "/messages/:id", to: "messages#show", as: :message

  resources :users
  resources :chats
  resources :messages

  root to: "users#index"

end