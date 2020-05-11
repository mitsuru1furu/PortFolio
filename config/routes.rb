Rails.application.routes.draw do
  resources :order_products, only: [:create]
  resources :products,only: [:new,:create,:show] do
  	resources :product_posts, only: [:create]
    resources :order_products, only: [:new,:edit,:confirm,:done,:show,:create]
  end
  resources :questions, only: [:show,:new,:edit,:create,:update] do
  	resource :answers, only: [:edit,:create,:update,:destroy]
  end
  devise_for :users,path:'',path_names: {sign_in:'login',sign_up:'up'}
  root 'tops#top'
  get 'index',to:'tops#index'
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
