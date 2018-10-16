Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :school_classes, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
