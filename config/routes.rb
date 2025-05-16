Rails.application.routes.draw do
  #get "/users", to: "users#index"
  #get "/users/:id", to: "users#show", as: :user

  #get "/chats", to: "chats#index"
  #get "/chats/:id", to: "chats#show", as: :chat

  #get "/messages", to: "messages#index"
  #get "/messages/:id", to: "messages#show", as: :message

  resources :users, only: [:index, :show, :new, :create]
  resources :chats, only: [:index, :show, :new, :create]
  resources :messages, only: [:index, :show, :new, :create]

  root to: "users#index"

end