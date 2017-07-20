Rails.application.routes.draw do
  get 'welcome/index'
  # config/routes.rb
    root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root :to => 'home#index'
resources :posts

end
