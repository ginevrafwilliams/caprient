Rails.application.routes.draw do
  namespace :admin do
      resources :projects

      root to: "projects#index"
    end
  get 'projects', to: 'projects#index'
  get 'projects/:id', to: 'projects#show', as: :project
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
