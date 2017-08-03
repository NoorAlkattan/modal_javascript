Rails.application.routes.draw do
  #resources :second_pages
  resources :first_pages
  root 'first_pages#index'
end
