Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'kkcl#index',                   as: 'home'
  
  #get  'new'            => 'kkcl#new'
  #post 'product'        => 'kkcl#create'
  
  
  get  'cart'           => 'kkcl#cart',    as: 'cart'
  get  'product'        => 'kkcl#product', as: 'products'
  get  'product/:id'    => 'kkcl#show',    as: 'product'
  get  'about'          => 'kkcl#about',   as: 'about'
  get  'contact'        => 'kkcl#contact', as: 'contact'
  
  get  'belt'           => 'kkcl#belt',    as: 'belt'
  get  'wallet'         => 'kkcl#wallet',  as: 'wallet'
  get  'gs'             => 'kkcl#gs',      as: 'gs'
  get  'dcl'            => 'kkcl#dcl',     as: 'dcl'
  
end
