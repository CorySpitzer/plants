Rails.application.routes.draw do
  root to: 'families#index'
  resources :families do
    resources :plants
  end
end
