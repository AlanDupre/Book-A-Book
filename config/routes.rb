Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books do
    resources :transactions, only: [:new, :create]
    member do
      patch  "/validate", to: "transctions#validate"
      patch  "/decline", to: "transactions#decline"
    end
  end
  get "/dashboard", to: "dashboards#show"
end
