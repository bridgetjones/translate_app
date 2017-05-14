Rails.application.routes.draw do
  resources :promotions
  get 'sessions/new'
  root 'sessions#new'

  resources :shop_owners
  resources :sessions
  root 'sessions#new'
  # I changed the root path to sessions -BJ
  get '/text' => 'shop_owners#original_text' , as: 'text'
  get '/translated_text' => 'shop_owners#translated_text'
  get '/shop_owner' => 'shop_owners#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
