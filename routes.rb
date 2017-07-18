Rails.application.routes.draw do
  get 'home/index'

  get 'welcome/index'

root :to => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#post 'posts/new' => 'posts#new'
#上のやつのコメントを外してrails sをやると起動可能？？なぜ？？
resources :posts

end
