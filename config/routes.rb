Rails.application.routes.draw do
  devise_for :users,path:'',path_names: {sign_in:'login',sign_up:'up'}
  root 'tops#top'
  get 'index',to:'tops#index'
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
