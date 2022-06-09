Rails.application.routes.draw do
  resources :stats
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

#  root 'stats', to: 'stats#index'

  get 'send_stat', to: 'stats#send_stat'

  resources :stats do
    collection {post :consultar_status}
  end

end
