Rails.application.routes.draw do
  root to: redirect('/events')
  
  resources :verbs do
    resources :samples
    resources :conjungations
  end
  resources :people do
    resources :kids
    resources :parents
  end
  resources :entries do
    resources :samples
  end
end
