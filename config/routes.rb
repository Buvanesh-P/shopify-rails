Rails.application.routes.draw do
  # root :to => 'home#index'
  get '/products', :to => 'products#index'
  mount ShopifyApp::Engine, at: 'shopify-app'
  get '/shopify-app' => 'home#index'
  get '/shopify-app/login' => 'shopify_app/sessions#new'
  post '/shopify-app/login' => 'shopify_app/sessions#create'
  get '/shopify-app/logout' => 'shopify_app/sessions#destroy'
  get '/auth/shopify/callback' => 'shopify_app/callback#callback'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
