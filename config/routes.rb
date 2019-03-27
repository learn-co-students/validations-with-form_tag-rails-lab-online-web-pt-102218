Rails.application.routes.draw do
  resources :posts, only: [:new, :show, :create, :edit, :update]
  resources :authors, only: [:new, :show, :create, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
