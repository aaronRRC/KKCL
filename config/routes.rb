Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'kkcl#index',                   as: 'home'
  
  get  'new'            => 'kkcl#new'
  post 'product'        => 'kkcl#create'
  
  
  get  'cart'           => 'kkcl#cart',    as: 'cart'
  get  'product'        => 'kkcl#product', as: 'products'
  get  'product/:id'    => 'kkcl#show',    as: 'one_product'
  get  'belt/:id'       => 'kkcl#belt',    as: 'belt'
  get  'about'          => 'kkcl#about',   as: 'about'
  get  'contact'        => 'kkcl#contact', as: 'contact'
  
end
