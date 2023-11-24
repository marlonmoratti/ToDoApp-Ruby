Rails.application.routes.draw do
  root "tasks#index"

  resources :tasks

  resources :tasks do
    patch :done, on: :member
  end
end
