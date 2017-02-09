Rails.application.routes.draw do
  root :to => 'tales#index'
  resources :tales do
    resources :contributions 
  end
  resources :contributions do
    resources :images
  end
end
