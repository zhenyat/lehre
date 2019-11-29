Rails.application.routes.draw do
  resources :examples
  resources :verbs
  resources :people do
    resources :kids
  end
  resources :entries do
    resources :samples
  end
end
