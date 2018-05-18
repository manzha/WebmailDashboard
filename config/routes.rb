Rails.application.routes.draw do
  resources :virtual_aliases
  resources :virtual_users
  resources :virtual_domains
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
