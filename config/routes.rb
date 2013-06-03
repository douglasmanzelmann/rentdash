Rentdash::Application.routes.draw do
  root to: "listings#index"

  resources :listings
end
