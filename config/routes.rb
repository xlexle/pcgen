Rails.application.routes.draw do
  resources :product_conflicts
  resources :power_supplies
  resources :conflicts
  resources :property_lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
