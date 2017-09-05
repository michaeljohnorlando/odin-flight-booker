Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #https://richonrails.com/articles/understanding-rails-routing

  root "flight#search"
  #resources :flights (I dont need all of them...) rake routes to see them
  get "search",   to: "flight#search"
  get "/flights", to: "flight#search"
  
end
