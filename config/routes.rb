Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :school_classes, only: [:create, :edit, :new, :update, :show]
  resources :students, only: [:create, :edit, :new, :update, :show]
end
