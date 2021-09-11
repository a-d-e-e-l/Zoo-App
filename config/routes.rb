Rails.application.routes.draw do
  resources :animal_foods
  resources :foods
  resources :employees
  resources :rooms
  resources :animals

  root to: "animals#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
