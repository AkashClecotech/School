Rails.application.routes.draw do
 
  get 'books/index'
  root 'welcome#index'

  resources :students do
    resources :books
  end
  resources :teachers do
    resources :books
  end
  resources :welcome 

  resources :schools
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
