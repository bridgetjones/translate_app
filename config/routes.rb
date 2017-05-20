Rails.application.routes.draw do
  root 'sessions#new'
  get 'sessions/new'
  get 'logout' => 'sessions#destroy'

  get '/dashboard'            => 'home#index'

  resources :shop_owners do
    resources :promotions
    resources :customers
  end
  resources :sessions
  # I changed the root path to sessions -BJ
  # get '/text'            => 'shop_owners#original_text'
  # post '/text'           => 'shop_owners#original_text'

  get '/translated_text' => 'shop_owners#translated_text'
  get '/shop_owner'      => 'shop_owners#new'

  post 'promotion/:id/send_all' => 'promotions#send_all', as: 'promotion_send_all'
  post 'promotion/:id/send_to_customers' => 'promotions#send_to_customers', as: 'promotion_send_to_customers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
