Rails.application.routes.draw do
  resources :shop_owners
  root 'home#application'

get '/text' => 'shop_owners#original_text' , as: 'text'
get '/translated_text' => 'shop_owners#translated_text'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
