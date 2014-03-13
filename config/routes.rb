Quizz::Application.routes.draw do

  resources :quizzes
  resources :hall

  match "/quizzes/show/", to: "quizzes#show", via: [:get, :post]
  get "quizzes/end"
  get "hall/new"
  get "hall/create"

  root 'welcome#show'

end
