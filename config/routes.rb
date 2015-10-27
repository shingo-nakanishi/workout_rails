Rails.application.routes.draw do
  resources :authors
  resources :books
  resources :posts
  resources :workout_forms
end
