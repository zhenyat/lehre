Rails.application.routes.draw do
  resources :people do
    resources :kids
  end
  resources :entries
end
