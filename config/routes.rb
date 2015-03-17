Rails.application.routes.draw do
  root to: 'kkcl#index',              as: 'home'
  
  get  'new'        => 'kkcl#new'
  post 'product'    => 'kkcl#create'
  
  
  get  'cart'       => 'kkcl#cart',    as: 'cart'
  get  'product'    => 'kkcl#product', as: 'products'
  get  'belt'       => 'kkcl#belt',    as: 'belt'
  get  'about'      => 'kkcl#about',   as: 'about'
  get  'contact'    => 'kkcl#contact', as: 'contact'
  
end
