Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'index#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'logout' => 'application#logout'

  get 'login' => 'account#login'
  get 'signup' => 'account#signup'
  get 'myaccount' => 'myaccount#account'
  get 'myaccount' => 'myaccount#index'
  get 'index' => 'index#index'
  get 'dashboard' => 'myaccount#dashboard'

  get 'newUser' => 'myaccount#newUser'
  get 'user/delete'  => 'myaccount#deleteUser'
  post 'createUser' => 'myaccount#createUser'

  get 'campaign' => 'campaign#index'
  get 'newCampaign' => 'campaign#new'
  get 'campaign/delete'  => 'campaign#delete'
  post 'createCampaign' => 'campaign#create'

  get 'ads' => 'advertisement#index'
  get 'newAd' => 'advertisement#new'
  post 'createAdvertisment' => 'advertisement#create'
  get 'ad/delete'  => 'advertisement#delete'

  get 'payment' => 'payment#index'
  get 'newpayment' => 'payment#new'
  post "createpayment" => 'payment#create'
  get 'payment/delete' => 'payment#delete'

  post 'attempt_login' => 'application#attempt_login'
  post 'attempt_signup' => 'account#attempt_signup'





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
