Rails.application.routes.draw do
  resources :components
  resources :qishis
  resources :orders
  resources :addresses
  resources :products
  resources :users
  post'/api/users/login',to:'users#login',format:'json'
  post'/api/orders/xiadan',to:'orders#xiadan',format:'html'
  post'/api/orders/apply',to:'orders#apply',format:'json'
  get '/api/qishis/:qishi_id/orders',to:'orders#ordersbyqishiid',format:'json'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
