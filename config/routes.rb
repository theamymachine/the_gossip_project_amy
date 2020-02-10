Rails.application.routes.draw do
  get 'gossip/:id', to: 'gossip#id'
  get 'welcome/:id', to: 'welcome#id'
  get 'static_pages/home', to: 'static_pages#home'
  get 'static_pages/team', to: 'static_pages#team'
  get 'static_pages/contact', to: 'static_pages#contact'
end
