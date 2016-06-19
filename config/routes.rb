Rails.application.routes.draw do

  resources :designations
  resources :information
  resources :website_details
  resources :products
  resources :statutories
  resources :biz_tabs
  resources :contact_details
  devise_for :users
  resources :users
  resources :form_detail_twos
  resources :form_detail_twos
  resources :form_detail_ones
  resources :form_detail_one
  resources :app_users do
    collection do
      post 'app_user_signup'
      get 'app_user_signin'
      get 'index_root'
      post 'submit_form_details'
      get 'create_users_roles'
      get 'generate_otp'
    end
  end
  root :to => 'app_users#index_root'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

end
