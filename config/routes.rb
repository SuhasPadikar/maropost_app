Rails.application.routes.draw do
  get 'learner/new_learner'
  get 'learner/show_learner'
  resources :students
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
