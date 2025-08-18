
Rails.application.routes.draw do
  resources :school_classes
  resources :students, only: [:index, :show, :new, :create, :edit, :update]
  resources :school_classes, only: [:index, :show, :new, :create, :edit, :update]
end
