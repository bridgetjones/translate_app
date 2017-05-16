Rails.application.routes.draw do
get 'sessions/new'
  root 'sessions#new'

  resources :shop_owners do
    resources :promotions
    resources :customers
  end
  resources :sessions
  # I changed the root path to sessions -BJ
  post '/text'           => 'shop_owners#original_text' , as: 'text'
  get '/translated_text' => 'shop_owners#translated_text'
  get '/shop_owner' => 'shop_owners#new'

  post '/shop_owner/:shop_owner_id/promotion/:id/send' => 'promotions#send_all_messages', as: 'shop_owner_promotion_send_all'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
