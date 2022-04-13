Rails.application.routes.draw do
  # root "articles#index"
 resources :users , only: [:new, :create]

end
