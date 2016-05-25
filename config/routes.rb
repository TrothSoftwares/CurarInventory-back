Rails.application.routes.draw do
  resources :employees
  resources :orderitems
  resources :orders
  resources :stockadjustmentitems
  resources :stockadjustments
  resources :purchaseorderitems
  resources :purchaseorders
  resources :customers
  resources :probras
  resources :productbrands
  resources :producttypes
  resources :suppliers
  devise_for :users, controllers: { sessions: 'sessions' }
  resources :products








  get 'mailorder', :to => 'purchaseorders#mailorder'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
