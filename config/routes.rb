Rails.application.routes.draw do
  resources :metrics, only: [:index, :show, :create, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :calculation do
    get 'calculation', to: 'calculation#index'
  end

end
