Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resourses :authors, only [:new, :edit, :show, :index, :update, :create]
  resourses :posts, only [:new, :edit, :show, :index, :update, :create]
end
