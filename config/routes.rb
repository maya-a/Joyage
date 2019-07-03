Rails.application.routes.draw do
  devise_for :users
  root to: 'searches#new'
  resources :searches, only:[:index, :new, :create] do
    resources :trips
  end
  get "thankyou", to: "pages#thankyou"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
