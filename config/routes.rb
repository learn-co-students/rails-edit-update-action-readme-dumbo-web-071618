Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create]

  #edit action
  get "/posts/:id/edit", to: "posts#edit", as: "edit_post"

  #update action
  put "/posts/:id", to: "posts#update"
end
