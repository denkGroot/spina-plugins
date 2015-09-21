Spina::Engine.routes.draw do
  resources :reservations, only: [:create]

  namespace :admin do
    resources :reservations
  end
end
