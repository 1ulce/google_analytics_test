Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/", to: "courses#index"
  get "/service/courses/view/:name/13", to: "courses#show"
  post "/service/courses/:name", to: "courses#add"
  delete "/service/courses/:name", to: "courses#delete"
  get "/cart", to: "courses#cart"
end
