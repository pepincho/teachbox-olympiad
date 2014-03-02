TeachboxNoit::Application.routes.draw do
  resources :quick_answers


  resources :quick_questions


  resources :comments_closed_group_posts


  resources :closed_group_posts


  resources :closed_groups


  resources :comments_course_posts


  resources :course_posts


  resources :courses


  resources :comments_open_group_posts


  resources :open_group_posts
  
  resources :searches

  resources :open_groups

  resources :random_groups

  resources :requests 

  resources :asset_opens

  root to: 'menu#index'
  devise_for :users

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :users

  resources :open_groups do
     post :join, :on => :collection
     post :like, :on => :collection
     post :like_post, :on => :collection
     post :like_comment, :on => :collection
     post :leave, :on => :collection
  end

 resources :closed_groups do
     post :requested, :on => :collection
     post :like, :on => :collection
     post :like_post, :on => :collection
     post :like_comment, :on => :collection
     post :leave, :on => :collection
  end
  
  resources :courses do
     post :join, :on => :collection
     post :like, :on => :collection
     post :like_post, :on => :collection
     post :like_comment, :on => :collection
     post :leave, :on => :collection
  end

  resources :requests do
    post :accept, :on => :collection
    post :decline, :on => :collection
  end

  resources :quick_questions do
    post :like_answer, :on => :collection
  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
