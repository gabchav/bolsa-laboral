Rails.application.routes.draw do
  devise_for :personas
  devise_for :empresas
  root "ofertas#index"
  resources :ofertas do
    collection do
      get "search"
      get "postuladas"
    end
    resources :empresa, only: [:new, :create]
  end  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
