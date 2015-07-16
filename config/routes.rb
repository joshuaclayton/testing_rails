Rails.application.routes.draw do
  root to: "todos#index"
  resources :todos, only: [:new, :create] do
    resource :completion, only: [:create]
  end

  resource :session, only: [:new, :create]
end
