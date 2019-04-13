Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resource :post, only: [:index, :show]
  resource :author, only: [:index, :new, :create, :show, :edit, :update]

  get "/posts/:id/edit", to: "posts#edit", as: "edit_post"
  get "/posts/:id", to: "posts#show", as: "post"
  patch "/posts/:id", to: "posts#update"
end
