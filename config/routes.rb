Rails.application.routes.draw do
  root :to => 'tales#index'
  resources :tales do
    collection do
      get 'images'
    end
    resources :contributions
  end
end
