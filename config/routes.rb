Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "courses#index"
  get "/service/courses/view/:name/13", to: "courses#show", as: "course"
  post "/service/courses/:name", to: "courses#add", as: "course_api"
  delete "/service/courses/:name", to: "courses#delete"
  get "/cart", to: "courses#cart"
  delete "/cart", to: "courses#clear"
end
