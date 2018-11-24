Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/new'
  root controller: :articles, action: :index
end
