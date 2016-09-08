Rails.application.routes.draw do
  
  resources :locations
  devise_for :users
  root to: 'venues#index'

  get '/venues', to: 'venues#index', as: 'venues'
  post '/venues', to: 'venues#create'

  get '/venues/new', to: 'venues#new', as: 'new_venue'
  get '/venues/:id/edit', to: 'venues#edit', as: 'edit_venue'
  patch '/venues/:id', to: 'venues#update'
  get '/venues/:id', to: 'venues#show', as: 'venue'
  delete '/venues/:id', to: 'venues#destroy'
  get '/venues/:id/inventories', to: 'inventories#index', as: 'inventories'
  post '/venues/:id/inventories', to: 'inventories#create'
  get  '/venues/:id/inventories/new', to: 'inventories#new', as: 'new_venue_inventory'
  get  '/venues/:id/inventories/:vd/edit', to: 'inventories#edit', as: 'edit_venue_inventory'
  get  '/venues/:id/inventories/:vd', to: 'inventories#show', as: 'venue_inventory'
  put  '/venues/:id/inventories/:vd', to: 'inventories#update',as: 'inventory_update'
  delete  '/venues/:id/inventories/:vd', to: 'inventories#destroy',as: 'inventory_delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
