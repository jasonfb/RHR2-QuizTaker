Rails.application.routes.draw do
  # loads up an HTML view containing our React JS app
  root to: "welcome#index"


  # all other endpoints are exclusively JSON
  resources :quizes
  get 'quiz/random', to: "quizes#random"
  get 'me', to: 'me#index'
end
