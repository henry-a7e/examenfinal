Rails.application.routes.draw do
  devise_for :users
  resources :garments
  resources :brands
  resources :garment_types
  resources :person_garments
  resources :transmissions
  resources :people
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "people#index"
end
