Rails.application.routes.draw do
  root to: "buckets#index"
  resources :buckets do
    resources :file_uploads, only: [:new, :create, :destroy]
  end
end
