Rails.application.routes.draw do
  root to: "buckets#index"
  resources :buckets
end
