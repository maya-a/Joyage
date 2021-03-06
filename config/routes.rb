Rails.application.routes.draw do
  devise_for :users
  root to: 'searches#new'
  resources :searches, only:[:index, :new, :create] do
    resources :trips
    resources :destinations, only: :show
  end
  get "thankyou", to: "pages#thankyou"
  get "about", to: "pages#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "pages/loading", to: 'pages#loading_page'
end
