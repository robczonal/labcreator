NuLab::Application.routes.draw do
	

  mount RailsAdmin::Engine => '/nulab_admin', :as => 'rails_admin'


  devise_for :admins 
  devise_scope :admins do get '/admins/sign_out' => 'devise/sessions#destroy' end
 

  devise_for :users

	match 'projects/:id/summary', :controller => 'projects', :action => 'summary'
	match 'projects/:id/analyses', :controller => 'projects', :action => 'analyses'
	match 'projects/:id/equip', :controller => 'projects', :action => 'equip'
	match 'projects/:id/select_procedure', :controller => 'projects', :action => 'select_procedure'
	match 'projects/:id/select_equipment', :controller => 'projects', :action => 'select_equipment'
	match 'projects/:id/delete_test', :controller => 'projects', :action => 'delete_test'
	match 'projects/:id/delete_ana', :controller => 'projects', :action => 'delete_ana'
	match 'projects/:id/delete_basket', :controller => 'projects', :action => 'delete_basket'	
	match 'projects/:id/create_baskets', :controller => 'projects', :action => 'create_baskets', :via => :POST
	resources :projects do
          member do
            put "create_baskets"
          end
          resources :analyses
          resources :testxes
          resources :comments
          resources :baskets
          resources :procedurexes do
            resources :ingredients
          end
          resources :equipment
          resources :equipcats
          resources :ingredients
	end
	resources :analyses
	resources :testxes
	resources :procedurexes do
          resources :ingredients
	end
	resources :equipment
	resources :ingredients
	resources :procedurexes_projects
	resources :analyses_projects
	resources :projects_testxes
	resources :equipcats
	
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
  root :to => "home#index"
  end
