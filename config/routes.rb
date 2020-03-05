Rails.application.routes.draw do
  root to: 'pages#home'
  namespace :admin do
      resources :projects
      resources :brandeds
      resources :articles
      resources :reports

      root to: "projects#index"
    end
  get 'projects', to: 'projects#index'
  get 'projects/:id', to: 'projects#show', as: :project
  get 'articles', to: 'articles#index'
  get 'articles/:id', to: 'articles#show', as: :article
  get 'brandeds', to: 'brandeds#index'
  get 'brandeds/:id', to: 'brandeds#show', as: :branded
  get 'reports', to: 'reports#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
