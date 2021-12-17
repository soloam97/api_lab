Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope module: 'api' do
    namespace :v1 do
      resources :jobs

      resources :companies do
        resources :jobs
      end

      resources :applies

      resources :geeks do
        resources :applies
      end

      match "*path", to: "application#catch_404", via: :all
    end
  end

end
