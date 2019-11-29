Rails.application.routes.draw do
  resources :verbs do
    resources :samples
  end
  resources :people do
    resources :kids
  end
  resources :entries do
    resources :samples
  end
end
