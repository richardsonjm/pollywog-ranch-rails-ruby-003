PollywogRanchRailsRuby003::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  get '/' => 'site#index'
  resources :ponds, except: [:update]
  post 'ponds/:id/update' => 'ponds#update'
  get 'ponds/:id/destroy' => 'ponds#destroy'
  resources :frogs, except: [:update]
  post 'frogs/:id/update' => 'frogs#update'
  get 'frogs/:id/destroy' => 'frogs#destroy'
  get '/frogs/:id/tadpoles/new' => 'frogs#tadpole'
  resources :tadpoles, except: [:update]
  post 'tadpoles/:id/update' => 'tadpoles#update'
  get 'tadpoles/:id/destroy' => 'tadpoles#destroy'
  get '/tadpoles/:id/evolve' => 'tadpoles#evolve'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
