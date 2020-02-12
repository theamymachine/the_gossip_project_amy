Rails.application.routes.draw do

  get 'user/:id', to: 'user#id', as: "user_id"
  get 'welcome/:id', to: 'welcome#id', as: 'welcome_id'
  get 'static_pages/home', to: 'static_pages#home'
  get 'static_pages/team', to: 'static_pages#team'
  get 'static_pages/contact', to: 'static_pages#contact'

  resources :gossip
  resources :cities
  
end
