Rails.application.routes.draw do
  #resources :posts, :only[:new,:create]
  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  get '/posts/:id', to: 'posts#show', as: 'post'
   post '/posts/:id', to: 'posts#show', as: 'posts'
  get '/create', to: 'posts#new'
  post '/create', to: 'posts#create', as: 'new_post'
 
  
end