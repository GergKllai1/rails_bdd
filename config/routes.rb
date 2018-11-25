Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end
  root controller: :articles, action: :index
end
