Rails.application.routes.draw do
  resources :promotions
  get 'sessions/new'
  root 'sessions#new'

  resource :sessions
  resource :shop_owners
  # root 'home#application'
  # changed to resource not resources so now need to do new forms
# get '/:userinput', to: 'home#index', as: 'userinput'
# get '/search'  => 'usersearch#index' , as: 'search'
# post '/text' => 'usersearch#text' , as: 'text'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
