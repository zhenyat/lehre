Rails.application.routes.draw do
  resources :people do
    resources :kids
  end
  resources :entries do
    resources :samples
  end
end
