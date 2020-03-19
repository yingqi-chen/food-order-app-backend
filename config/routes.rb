Rails.application.routes.draw do
 
  resources :dishes
  resources :users do
    resources :orders
    resources :favorites
  end

  post '/login', to: "session#login"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
