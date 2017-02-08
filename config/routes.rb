Rails.application.routes.draw do
  root :to => 'tales#index'
resources :tales
end
