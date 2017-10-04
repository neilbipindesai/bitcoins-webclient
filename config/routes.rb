Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/bitcoins' => 'bitcoins#index'
  get '/bitcoins/new' => 'bitcoins#new'
  post '/bitcoins' => 'bitcoins#create'
  get '/bitcoins/:id' => 'bitcoins#show'
  patch '/bitcoins/:id' => 'bitcoins#update'
  delete '/bitcoins/:id' => 'bitcoins#destroy'
end
